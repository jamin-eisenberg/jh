module Pages.Home_ exposing (page)

import ElmSpa.Page exposing (Page)
import Gen.Route
import Html
import Html.Attributes
import Page exposing (Page)
import Request
import Shared
import Stories
import Story exposing (Story, storyId)
import Svg
import Svg.Attributes exposing (height, width, x, xlinkHref, y)
import View exposing (View)


page : Shared.Model -> Request.With () -> Page
page shared _ =
    Page.static
        { view = view shared.stories shared.imageBasePath
        }


view : Stories.Stories -> String -> View Never
view stories imageBasePath =
    { title = "JH"
    , body =
        [ Html.div [ Html.Attributes.class "w-100 h-100" ]
            [ Svg.svg [ width "812px", height "1815px" ]
                (Svg.image [ xlinkHref (imageBasePath ++ "SBD_2.0_Flow.png") ] []
                    :: Stories.map viewHitbox stories
                )
            ]
        ]
    }


viewHitbox : Story -> Svg.Svg msg
viewHitbox story =
    Svg.a [ Svg.Attributes.xlinkHref (Gen.Route.toHref (Gen.Route.Story__Id_ { id = storyId story })) ]
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
