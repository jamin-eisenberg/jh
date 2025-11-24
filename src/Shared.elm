module Shared exposing
    ( Flags
    , Model
    , Msg
    , init
    , subscriptions
    , update
    )

import Request exposing (Request)
import Stories exposing (Stories)


type alias Flags =
    { imageBasePath : String }


type alias Model =
    { stories : Stories
    , imageBasePath : String
    }


type Msg
    = NoOp


init : Request -> Flags -> ( Model, Cmd Msg )
init _ { imageBasePath } =
    ( { stories = Stories.initialStories, imageBasePath = imageBasePath }, Cmd.none )


update : Request -> Msg -> Model -> ( Model, Cmd Msg )
update _ msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


subscriptions : Request -> Model -> Sub Msg
subscriptions _ _ =
    Sub.none
