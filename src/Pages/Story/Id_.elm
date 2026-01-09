module Pages.Story.Id_ exposing (page)

import Browser.Dom exposing (Error(..))
import Effect
import Gen.Params.Story.Id_ exposing (Params)
import Gen.Route
import Html exposing (a, div, hr, img, p, span, text)
import Html.Attributes exposing (class, href, src, style)
import Page exposing (Page)
import Pages.NotFound as NotFound
import Request
import Shared
import Stories
import Story exposing (storyId)


page : Shared.Model -> Request.With Params -> Page
page shared req =
    Page.advanced
        { init = ( (), Effect.fromShared (Shared.ReadingNewStory req.params.id) )
        , update = \_ model -> ( model, Effect.none )
        , subscriptions = \_ -> Sub.none
        , view = view shared.imageBasePath (Stories.selectStoryById req.params.id shared.stories) (Stories.length shared.stories)
        }


view imageBasePath maybeStoryContext totalStories _ =
    case maybeStoryContext of
        Nothing ->
            NotFound.view

        Just storyContext ->
            let
                { previous, next } =
                    storyContext

                story =
                    storyContext.current

                storyIndex =
                    storyContext.currentIndex
            in
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
                    , div [ style "height" "8em", class "w-100" ] []
                    ]
                , div [ class "fixed-bottom bg-white" ]
                    [ hr [ class "mx-2 mt-2 mb-0" ] []
                    , div [ class "d-flex flex-row align-items-center w-100 p-2 fs-2" ]
                        [ viewStoryLink previous "end" (span [ class "material-symbols-outlined" ] [ text "arrow_left_alt" ])
                        , p [ class "mx-2 my-0 text-secondary flex-shrink-1" ] [ text (String.fromInt (storyIndex + 1) ++ " / " ++ String.fromInt totalStories) ]
                        , viewStoryLink next "start" (span [ class "material-symbols-outlined" ] [ text "arrow_right_alt" ])
                        ]
                    ]
                ]
            }


viewStoryLink maybeStory justify child =
    a
        ([ class ("d-flex flex-grow-1 my-0 link-secondary link-underline link-underline-opacity-0 justify-content-" ++ justify)
         , style "flex-basis" "0"
         ]
            ++ (case maybeStory of
                    Nothing ->
                        []

                    Just story ->
                        [ href (Gen.Route.toHref (Gen.Route.Story__Id_ { id = storyId story })) ]
               )
        )
        [ case maybeStory of
            Nothing ->
                Html.text ""

            Just _ ->
                child
        ]
