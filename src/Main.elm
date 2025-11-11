port module Main exposing (main)

import Browser
import Html exposing (Html, button, div, h1, text)
import Html.Attributes exposing (attribute, class, id, tabindex, type_)
import Svg
import Svg.Attributes exposing (height, width, xlinkHref)
import Svg.Events


type alias Model =
    {}


type Icon
    = Square


type Msg
    = IconClicked Icon


type alias ModalMessage =
    { id : String
    , shouldOpen : Bool
    }


port send : ModalMessage -> Cmd msg


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
        IconClicked _ ->
            ( model, send { id = "myModal", shouldOpen = True } )


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
                , Svg.Events.onClick (IconClicked Square)
                ]
                []
            ]
        , div [ class "modal", id "myModal", tabindex -1 ]
            [ div [ class "modal-dialog" ]
                [ div [ class "modal-content" ]
                    [ div [ class "modal-header" ]
                        [ h1 [ class "modal-title fs-5", id "myModalLabel" ]
                            [ text "Modal title" ]
                        , button [ type_ "button", class "btn-close", attribute "data-bs-dismiss" "modal" ] []
                        ]
                    ]
                ]
            ]
        ]
