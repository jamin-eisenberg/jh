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
            [ Svg.svg []
                (Svg.image [ xlinkHref (imageBasePath ++ "SBD_2.0_Flow.png") ] []
                    :: Stories.map viewHitbox stories
                )
            , Html.div [ Html.Attributes.class "position-fixed bottom-0 end-0 mb-2 me-2" ]
                [ Html.a [ Html.Attributes.class "p-2 btn btn-secondary", Html.Attributes.href (Gen.Route.toHref Gen.Route.Help) ]
                    [ Html.span [ Html.Attributes.class "material-symbols-outlined", Html.Attributes.style "font-size" "3em" ]
                        [ Html.text "help" ]
                    ]
                , Html.a [ Html.Attributes.class "ms-2 p-2 btn btn-secondary", Html.Attributes.href (Gen.Route.toHref Gen.Route.Help) ]
                    [ Html.span [ Html.Attributes.class "material-symbols-outlined", Html.Attributes.style "font-size" "3em" ]
                        [ Html.text "resume" ]
                    ]
                ]
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
