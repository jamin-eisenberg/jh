module Pages.Story.Id_ exposing (page)

import Browser.Dom exposing (Error(..))
import Gen.Params.Story.Id_ exposing (Params)
import Gen.Route
import Html exposing (a, div, hr, img, p, text)
import Html.Attributes exposing (class, href, src, style)
import Page exposing (Page)
import Pages.NotFound as NotFound
import Request
import Shared
import Stories
import Story exposing (Story)
import View exposing (View)


page : Shared.Model -> Request.With Params -> Page
page shared req =
    Page.static
        { view = view (Stories.selectStoryById req.params.id shared.stories)
        }


view : Maybe Story -> View msg
view maybeStory =
    case maybeStory of
        Nothing ->
            NotFound.view

        Just story ->
            { title = "JH - " ++ story.title
            , body =
                [ div [ class "fixed-top" ]
                    [ div [ class "d-flex flex-row align-items-center w-100 p-2" ]
                        [ img [ src ("/images/" ++ story.iconImageName), style "height" "2.5em", style "margin-right" "1em" ] []
                        , p [ class "fs-1 m-0" ] [ text story.title ]
                        , a [ class "btn-close ms-auto", href (Gen.Route.toHref Gen.Route.Home_) ] []
                        ]
                    , hr [ class "mx-2 mt-0 mb-2" ] []
                    ]
                , p [ class "m-2", style "padding-top" "68px" ] [ text story.description ]
                ]
            }
