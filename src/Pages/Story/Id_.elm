module Pages.Story.Id_ exposing (page)

import Gen.Params.Story.Id_ exposing (Params)
import Page exposing (Page)
import Request
import Shared
import Stories exposing (Stories)
import Story exposing (Story)
import View exposing (View)


page : Shared.Model -> Request.With Params -> Page
page shared req =
    Page.static
        { view = view (Stories.selectStoryByModalId req.params.id shared.stories)
        }


view : Maybe Story -> View msg
view maybeStory =
    case maybeStory of
        Nothing ->
            { title = "Story not found", body = [] }

        Just story ->
            { title = "JH - " ++ story.title, body = [] }
