module Pages.Help exposing (Model, Msg, page)

import Effect
import Gen.Params.Help exposing (Params)
import Gen.Route
import Html exposing (a, button, div, hr, p, span, text)
import Html.Attributes exposing (class, href, style)
import Html.Events exposing (onClick)
import Page exposing (Page)
import Request
import Shared
import Stories exposing (firstStory)
import Story exposing (storyId)
import View exposing (View)


type alias Model =
    {}


type Msg
    = IncrementFontSize
    | DecrementFontSize


page : Shared.Model -> Request.With Params -> Page.With Model Msg
page shared _ =
    Page.advanced
        { init = ( {}, Effect.none )
        , subscriptions = \_ -> Sub.none
        , update =
            \msg _ ->
                case msg of
                    IncrementFontSize ->
                        ( {}, Effect.fromShared Shared.IncrementFontSize )

                    DecrementFontSize ->
                        ( {}, Effect.fromShared Shared.DecrementFontSize )
        , view =
            \_ ->
                view
                    (firstStory shared.stories
                        |> Maybe.map storyId
                        |> Maybe.withDefault ""
                    )
                    shared.fontSize
        }


view : String -> Int -> View Msg
view firstStoryId fontSize =
    { title = "JH - Help"
    , body =
        [ div [ class "sticky-top" ]
            [ div [] [] -- panzoom seems to affect the first child div (nevermind that we're on a different page now), so let it affect this empty one
            , div [ class "d-flex flex-row align-items-center w-100 p-2" ]
                [ p [ class "fs-1 m-0" ] [ text "What is JH?" ]
                , a [ class "btn-close ms-auto", href (Gen.Route.toHref Gen.Route.Home_) ] []
                ]
            , hr [ class "mx-2 mt-0 mb-2" ] []
            ]
        , div [ style "overflow" "auto", class "h-100" ]
            [ div [ class "p-2" ]
                [ p [] [ text "Hello and welcome to JH (pronounced \"jaitch\")! JH is a project that we (Jamin and Hailey) have been working on to display our love story and details about our life together in a fun way." ]
                , p [] [ text "JH has two components: this website and an embroidered sign that can be found at our wedding. Both share the same set of icons, which represent stories we wish to share with you. We recommend you take some time to admire Hailey's handiwork and see what icons you recognize, then move on to reading the icons' associated stories right here! No need to read it all at once! This website will not be taken down anytime in the foreseeable future." ]
                , p []
                    [ text "You can move between stories directly with the arrow buttons, and you can always pick up where you left off via the "
                    , span [ class "material-symbols-outlined" ] [ text "resume" ]
                    , text " (resume) button on the home page. "
                    , text "To start, you can choose to "
                    , a [ href (Gen.Route.toHref Gen.Route.Home_) ] [ text "view the map of clickable icons" ]
                    , text " or "
                    , a [ href (Gen.Route.toHref (Gen.Route.Story__Id_ { id = firstStoryId })) ] [ text "read the stories in chronological order " ]
                    ]
                , p [] [ text "You can learn more about the making of JH in ", a [ href "/story/JH" ] [ text "this story" ], text "." ]
                , p []
                    [ text "You can get back to this welcome page at any time by using the "
                    , span [ class "material-symbols-outlined" ] [ text "help" ]
                    , text " (help) button on the home page."
                    ]
                , p [] [ text "You can set the font size below:" ]
                , button [ class "btn btn-primary", onClick IncrementFontSize ] [ text "+" ]
                , p [ class "my-1" ] [ text (String.fromInt fontSize) ]
                , button [ class "btn btn-primary", onClick DecrementFontSize ] [ text "-" ]
                ]
            ]
        ]
    }
