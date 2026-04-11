module Pages.Story.Id_ exposing (page)

import Browser.Dom exposing (Error(..))
import Date
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
        , view = \_ -> view shared.imageBasePath (Stories.firstStory shared.stories) (Stories.selectStoryById req.params.id shared.stories) (Stories.length shared.stories) shared.imageWidth shared.imageHeight
        }


view imageBasePath firstStory maybeStoryContext totalStories imageWidth imageHeight =
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
                    [ div [] [] -- panzoom seems to affect the first child div (nevermind that we're on a different page now), so let it affect this empty one
                    , let
                        thumbnailHeight =
                            48

                        thumbnailWidth =
                            (toFloat imageWidth / toFloat imageHeight) * thumbnailHeight

                        minimapBoxWidth =
                            floor (thumbnailWidth * (toFloat story.aabb.width / toFloat imageWidth))

                        minimapBoxHeight =
                            floor (thumbnailHeight * (toFloat story.aabb.height / toFloat imageHeight))

                        minimapBoxX =
                            floor (9 + toFloat story.aabb.x * (thumbnailWidth / toFloat imageWidth))

                        minimapBoxY =
                            floor (9 + toFloat story.aabb.y * (thumbnailHeight / toFloat imageHeight))

                        visualExpansionFactor =
                            2
                      in
                      div [ class "d-flex flex-row align-items-center w-100 p-2" ]
                        [ div [ style "height" (String.fromInt thumbnailHeight ++ "px"), style "margin-right" "1em" ]
                            [ a [ href (Gen.Route.toHref Gen.Route.Home_) ] [ img [ src (imageBasePath ++ Shared.jhImageName False), class "w-100 h-100" ] [] ]
                            , div
                                [ style "background-color" "red"
                                , style "position" "absolute"
                                , style "width" (String.fromInt (minimapBoxWidth * visualExpansionFactor) ++ "px")
                                , style "height" (String.fromInt (minimapBoxHeight * visualExpansionFactor) ++ "px")
                                , style "left" (String.fromInt minimapBoxX ++ "px")
                                , style "top" (String.fromInt minimapBoxY ++ "px")
                                ]
                                []
                            ]
                        , img [ src (imageBasePath ++ story.iconImageName), style "height" (String.fromInt thumbnailHeight ++ "px"), style "margin-right" "1em" ] []
                        , p [ class "fs-1 m-0" ] [ text story.title ]
                        , a [ class "btn-close ms-auto", href (Gen.Route.toHref Gen.Route.Home_) ] []
                        ]
                    , hr [ class "mx-2 mt-0 mb-2" ] []
                    ]
                , div [ style "overflow" "auto", class "h-100" ]
                    [ p [ class "px-2 mb-2" ]
                        [ text
                            ("Date: "
                                ++ (if story.dateIsApproximate then
                                        "~"

                                    else
                                        ""
                                   )
                                ++ Date.format "MMMM ddd, y" story.date
                            )
                        ]
                    , Story.viewDescriptionContent imageBasePath story.description
                    , div [ style "height" "8em", class "w-100" ] []
                    ]
                , div [ class "fixed-bottom bg-white" ]
                    [ hr [ class "mx-2 mt-2 mb-0" ] []
                    , div [ class "d-flex flex-row align-items-center w-100 p-2 fs-2" ]
                        [ viewStoryLink firstStory "start" "shrink" (span [ class "material-symbols-outlined" ] [ text "first_page" ])
                        , viewStoryLink previous "end" "grow" (span [ class "material-symbols-outlined" ] [ text "arrow_left_alt" ])
                        , p [ class "mx-2 my-0 text-secondary flex-shrink-1" ] [ text (String.fromInt (storyIndex + 1) ++ " / " ++ String.fromInt totalStories) ]
                        , viewStoryLink next "start" "grow" (span [ class "material-symbols-outlined" ] [ text "arrow_right_alt" ])
                        ]
                    ]
                ]
            }


viewStoryLink maybeStory justify stretch child =
    a
        ([ class ("d-flex flex-" ++ stretch ++ "-1 my-0 link-secondary link-underline link-underline-opacity-0 justify-content-" ++ justify)
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
