module Pages.Story.Id_ exposing (page)

import Browser.Dom exposing (Error(..))
import Gen.Params.Story.Id_ exposing (Params)
import Gen.Route
import Html exposing (a, button, div, hr, img, p, text)
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
        { view = view shared.imageBasePath (Stories.selectStoryById req.params.id shared.stories)
        }


view : String -> Maybe Story -> View msg
view imageBasePath maybeStory =
    case maybeStory of
        Nothing ->
            NotFound.view

        Just story ->
            { title = "JH - " ++ story.title
            , body =
                [ div [ class "sticky-top" ]
                    [ div [ class "d-flex flex-row align-items-center w-100 p-2" ]
                        [ img [ src (imageBasePath ++ story.iconImageName), style "height" "2.5em", style "margin-right" "1em" ] []
                        , p [ class "fs-1 m-0" ] [ text story.title ]
                        , a [ class "btn-close ms-auto", href (Gen.Route.toHref Gen.Route.Home_) ] []
                        ]
                    , hr [ class "mx-2 mt-0 mb-2" ] []
                    ]
                , div [ style "overflow" "auto", class "h-100" ]
                    [ Story.viewDescriptionContent imageBasePath story.description
                    , div [ style "height" "5em", class "w-100" ] []
                    ]
                , div [ class "fixed-bottom" ]
                    [ div [ class "d-flex flex-row align-items-center w-100 p-2" ]
                        [ a [ href (Gen.Route.toHref Gen.Route.Home_), class "ms-auto" ]
                            [ button [ class "btn btn-secondary" ] [ text "Close" ] ]
                        ]
                    ]
                ]
            }
