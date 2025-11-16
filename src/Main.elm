port module Main exposing (main)

import Browser
import Html exposing (Html, button, div, h1, img, text)
import Html.Attributes exposing (attribute, class, href, id, src, style, tabindex, type_)
import Stories
import Story exposing (Story, modalId)
import Svg
import Svg.Attributes exposing (height, width, x, xlinkHref, y)
import Svg.Events


type alias Model =
    {}


type Msg
    = StoryClicked String -- story modal ID


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
        StoryClicked storyModalId ->
            ( model, send { id = storyModalId, shouldOpen = True } )


view : Model -> Html Msg
view model =
    Html.div [ Html.Attributes.class "svg-container" ]
        (Svg.svg [ width "812px", height "1815px" ]
            (Svg.image [ xlinkHref "images/796-812x1815.jpg" ] []
                :: Stories.map viewHitbox
            )
            :: Stories.map viewModal
        )


viewHitbox : Story -> Svg.Svg Msg
viewHitbox story =
    Svg.rect
        [ width (inPx story.hitbox.width)
        , height (inPx story.hitbox.height)
        , x (inPx story.hitbox.x)
        , y (inPx story.hitbox.y)
        , Svg.Attributes.stroke "red"
        , Svg.Attributes.fillOpacity "0"
        , Svg.Events.onClick (StoryClicked (modalId story))
        ]
        []


viewModal : Story -> Html Msg
viewModal story =
    div [ class "modal", id (modalId story), tabindex -1 ]
        [ div [ class "modal-dialog" ]
            [ div [ class "modal-content" ]
                [ div [ class "modal-header" ]
                    [ img [ src ("images/" ++ story.iconImageName), style "height" "2.5em", style "margin-right" "1em" ] []
                    , h1 [ class "modal-title fs-5", id (modalId story ++ "Label") ]
                        [ text story.title ]
                    , button [ type_ "button", class "btn-close", attribute "data-bs-dismiss" "modal" ] []
                    ]
                , div [ class "modal-body" ] [ text story.description ]
                ]
            ]
        ]


inPx : Int -> String
inPx px =
    String.fromInt px ++ "px"
