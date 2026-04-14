port module Shared exposing
    ( Flags
    , Model
    , Msg(..)
    , init
    , jhImageName
    , setUpPanzoom
    , subscriptions
    , update
    )

import ElmSpa.Request exposing (Request)
import Gen.Route
import Request exposing (Request)
import Stories exposing (Stories)
import StoriesData
import Story exposing (storyId)


type alias LocalStorage =
    { currentlyReadingStoryId : Maybe String, visitedHomePage : Maybe Bool, fontSize : Maybe Int }


port saveToLocalStorage : LocalStorage -> Cmd msg


port resetStoryScroll : () -> Cmd msg


port setFontSize : Int -> Cmd msg


port setUpPanzoom : () -> Cmd msg


type alias Flags =
    { imageBasePath : String
    , visited : Bool
    , currentlyReadingStoryId : Maybe String
    , imageWidth : Int
    , imageHeight : Int
    , visitedHomePage : Bool
    , fontSize : Int
    }


type alias Model =
    { stories : Stories
    , imageBasePath : String
    , currentlyReadingStoryId : String
    , imageWidth : Int
    , imageHeight : Int
    , visitedHomePage : Bool
    , fontSize : Int
    }


type Msg
    = ReadingNewStory String
    | VisitHomePage
    | IncrementFontSize
    | DecrementFontSize


jhImageName firstVisit =
    if firstVisit then
        "jh-tour.png"

    else
        "jh.png"


init : Request -> Flags -> ( Model, Cmd Msg )
init req { imageBasePath, visited, currentlyReadingStoryId, imageWidth, imageHeight, visitedHomePage, fontSize } =
    ( { stories = StoriesData.initialStories
      , imageBasePath = imageBasePath
      , currentlyReadingStoryId =
            currentlyReadingStoryId
                |> Maybe.withDefault
                    (Stories.firstStory StoriesData.initialStories
                        |> Maybe.map storyId
                        |> Maybe.withDefault "not-found"
                    )
      , imageWidth = imageWidth
      , imageHeight = imageHeight
      , visitedHomePage = visitedHomePage
      , fontSize = fontSize
      }
    , if not visited && req.route == Gen.Route.Home_ then
        Request.replaceRoute Gen.Route.Help req

      else
        Cmd.none
    )


update : Request -> Msg -> Model -> ( Model, Cmd Msg )
update _ msg model =
    case msg of
        ReadingNewStory newStoryId ->
            ( { model | currentlyReadingStoryId = newStoryId }
            , Cmd.batch
                [ saveToLocalStorage { defaultLocalStorage | currentlyReadingStoryId = Just newStoryId }
                , resetStoryScroll ()
                ]
            )

        VisitHomePage ->
            ( model, saveToLocalStorage { defaultLocalStorage | visitedHomePage = Just True } )

        IncrementFontSize ->
            let
                newFontSize =
                    model.fontSize + 1
            in
            ( { model | fontSize = newFontSize }, Cmd.batch [ setFontSize newFontSize, saveToLocalStorage { defaultLocalStorage | fontSize = Just newFontSize } ] )

        DecrementFontSize ->
            let
                newFontSize =
                    model.fontSize - 1
            in
            ( { model | fontSize = newFontSize }, Cmd.batch [ setFontSize newFontSize, saveToLocalStorage { defaultLocalStorage | fontSize = Just newFontSize } ] )


defaultLocalStorage : LocalStorage
defaultLocalStorage =
    { currentlyReadingStoryId = Nothing, visitedHomePage = Nothing, fontSize = Nothing }


subscriptions : Request -> Model -> Sub Msg
subscriptions _ _ =
    Sub.none
