module Pages.Help exposing (page)

import Gen.Params.Help exposing (Params)
import Gen.Route
import Html exposing (a, div, hr, p, span, text)
import Html.Attributes exposing (class, href)
import Page exposing (Page)
import Request
import Shared
import Stories exposing (firstStory)
import Story exposing (storyId)
import View exposing (View)


page : Shared.Model -> Request.With Params -> Page
page shared _ =
    Page.static
        { view =
            view
                (firstStory shared.stories
                    |> Maybe.map storyId
                    |> Maybe.withDefault ""
                )
        }


view : String -> View msg
view firstStoryId =
    { title = "JH - Help"
    , body =
        [ div [ class "sticky-top" ]
            [ div [ class "d-flex flex-row align-items-center w-100 p-2" ]
                [ p [ class "fs-1 m-0" ] [ text "What is JH?" ]
                , a [ class "btn-close ms-auto", href (Gen.Route.toHref Gen.Route.Home_) ] []
                ]
            , hr [ class "mx-2 mt-0 mb-2" ] []
            ]
        , div [ class "p-2" ]
            [ p [] [ text "Hello and welcome to JH (pronounced \"jaitch\")! JH is a project that we (Jamin and Hailey) have been working on to display our love story and details about our life together in a fun way." ]
            , p [] [ text "JH has two components: this website and an embroidered sign that can be found at our wedding. Both share the same set of icons, which represent stories we wish to share with you. We recommend you take some time to admire Hailey's handiwork and see what icons you recognize, then move on to reading the icons' associated stories right here!" ]
            , p []
                [ text "To start, you can choose to "
                , a [ href (Gen.Route.toHref Gen.Route.Home_) ] [ text "view the map of clickable icons" ]
                , text " or "
                , a [ href (Gen.Route.toHref (Gen.Route.Story__Id_ { id = firstStoryId })) ] [ text "read the stories in chronological order " ]
                , text ". You can move between stories directly with the arrow buttons, and you can always pick up where you left off via the "
                , span [ class "material-symbols-outlined" ] [ text "resume" ]
                , text " (resume) button on the home page."
                ]
            , p [] [ text "You can learn more about the making of JH in ", a [ href "TODO" ] [ text "this story" ], text "." ]
            ]
        ]
    }
