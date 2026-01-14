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
    Page.element
        { init = ( (), Shared.setUpPanzoom () )
        , subscriptions = \_ -> Sub.none
        , update = \_ model -> ( model, Cmd.none )
        , view = \_ -> view shared.stories shared.imageBasePath shared.currentlyReadingStoryId shared.imageWidth shared.imageHeight
        }


view : Stories.Stories -> String -> String -> Int -> Int -> View Never
view stories imageBasePath currentlyReadingStoryId imageWidth imageHeight =
    { title = "JH"
    , body =
        [ Html.div [ Html.Attributes.class "mw-100" ]
            [ Html.div [ Html.Attributes.id "jh", Html.Attributes.width imageWidth, Html.Attributes.height imageHeight ]
                [ Svg.svg [ Svg.Attributes.width "2765px", Svg.Attributes.height "2565px" ]
                    (Svg.image [ xlinkHref (imageBasePath ++ Shared.jhImageName) ] []
                        :: Stories.map viewHitbox stories
                    )
                ]
            , Html.div [ Html.Attributes.class "position-fixed bottom-0 end-0 mb-2 me-2" ]
                [ Html.a
                    [ Html.Attributes.class "p-2 btn btn-secondary"
                    , Html.Attributes.href (Gen.Route.toHref Gen.Route.Help)
                    ]
                    [ Html.span [ Html.Attributes.class "material-symbols-outlined", Html.Attributes.style "font-size" "3em" ]
                        [ Html.text "help" ]
                    ]
                , Html.a
                    [ Html.Attributes.class "ms-2 p-2 btn btn-secondary"
                    , Html.Attributes.href (Gen.Route.toHref (Gen.Route.Story__Id_ { id = currentlyReadingStoryId }))
                    ]
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
