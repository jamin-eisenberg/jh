port module Shared exposing
    ( Flags
    , Model
    , Msg(..)
    , init
    , setUpPanzoom
    , subscriptions
    , update
    )

import ElmSpa.Request exposing (Request)
import Gen.Route
import Request exposing (Request)
import Stories exposing (Stories)
import Story exposing (storyId)


port saveToLocalStorage : { currentlyReadingStoryId : String } -> Cmd msg


port setUpPanzoom : () -> Cmd msg


type alias Flags =
    { imageBasePath : String, visited : Bool, currentlyReadingStoryId : Maybe String }


type alias Model =
    { stories : Stories
    , imageBasePath : String
    , currentlyReadingStoryId : String
    }


type Msg
    = ReadingNewStory String


init : Request -> Flags -> ( Model, Cmd Msg )
init req { imageBasePath, visited, currentlyReadingStoryId } =
    ( { stories = Stories.initialStories
      , imageBasePath = imageBasePath
      , currentlyReadingStoryId =
            currentlyReadingStoryId
                |> Maybe.withDefault
                    (Stories.firstStory Stories.initialStories
                        |> Maybe.map storyId
                        |> Maybe.withDefault "not-found"
                    )
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
            ( { model | currentlyReadingStoryId = newStoryId }, saveToLocalStorage { currentlyReadingStoryId = newStoryId } )


subscriptions : Request -> Model -> Sub Msg
subscriptions _ _ =
    Sub.none
