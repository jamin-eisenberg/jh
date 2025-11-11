module Main exposing (main)

import Browser
import Html exposing (Html)
import Html.Attributes
import Svg
import Svg.Attributes exposing (height, width, xlinkHref)
import Svg.Events


type alias Model =
    {}


type Msg
    = NoOp


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }


init : () -> ( Model, Cmd Msg )
init flags =
    ( {}, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    Html.div [ Html.Attributes.class "svg-container" ]
        [ Svg.svg
            [ width "812px"
            , height "1815px"
            ]
            [ Svg.image
                [ xlinkHref "images/796-812x1815.jpg"
                ]
                []
            , Svg.rect
                [ width "50px"
                , height "50px"
                , Svg.Attributes.stroke "red"
                , Svg.Attributes.fillOpacity "0"
                , Svg.Events.onClick NoOp
                ]
                []
            ]
        ]
