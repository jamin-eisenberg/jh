module Pages.Home_ exposing (page)

import Browser
import ElmSpa.Page exposing (Page)
import Gen.Route
import Html exposing (Html, button, div, h1, img, text)
import Html.Attributes exposing (attribute, class, href, id, src, style, tabindex, type_)
import Page exposing (Page)
import Request
import Shared
import Stories
import Story exposing (Story, modalId)
import Svg
import Svg.Attributes exposing (height, width, x, xlinkHref, y)
import Svg.Events
import View exposing (View)


page : Shared.Model -> Request.With () -> Page
page shared req =
    Page.static
        { view = view shared.stories
        }


view : Stories.Stories -> View Never
view stories =
    { title = "JH"
    , body =
        [ Html.div [ Html.Attributes.class "svg-container" ]
            [ Svg.svg [ width "812px", height "1815px" ]
                (Svg.image [ xlinkHref "images/796-812x1815.jpg" ] []
                    :: Stories.map viewHitbox stories
                )
            ]
        ]
    }


viewHitbox : Story -> Svg.Svg msg
viewHitbox story =
    Svg.a [ Svg.Attributes.xlinkHref (Gen.Route.toHref (Gen.Route.Story__Id_ { id = modalId story })) ]
        [ Svg.rect
            [ width (inPx story.hitbox.width)
            , height (inPx story.hitbox.height)
            , x (inPx story.hitbox.x)
            , y (inPx story.hitbox.y)
            , Svg.Attributes.stroke "red"
            , Svg.Attributes.fillOpacity "0"
            ]
            []
        ]


inPx : Int -> String
inPx px =
    String.fromInt px ++ "px"
