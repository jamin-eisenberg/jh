module Shared exposing
    ( Flags
    , Model
    , Msg
    , init
    , subscriptions
    , update
    )

import ElmSpa.Request exposing (Request)
import Gen.Route
import Request exposing (Request)
import Stories exposing (Stories)


type alias Flags =
    { imageBasePath : String, visited : Bool }


type alias Model =
    { stories : Stories
    , imageBasePath : String
    }


type Msg
    = NoOp


init : Request -> Flags -> ( Model, Cmd Msg )
init req { imageBasePath, visited } =
    ( { stories = Stories.initialStories, imageBasePath = imageBasePath }
    , if not visited && req.route == Gen.Route.Home_ then
        Request.replaceRoute Gen.Route.Help req

      else
        Cmd.none
    )


update : Request -> Msg -> Model -> ( Model, Cmd Msg )
update _ msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


subscriptions : Request -> Model -> Sub Msg
subscriptions _ _ =
    Sub.none
