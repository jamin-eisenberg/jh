module Stories exposing (Stories, map, selectStoryByModalId, stories)

import Array exposing (Array)
import Date
import Story
import Time


stories : Stories
stories =
    Stories
        (Array.fromList
            [ { iconImageName = "796-812x1815.jpg"
              , title = "Square"
              , description = "Square description"
              , date = Date.fromPosix Time.utc (Time.millisToPosix 0)
              , hitbox = { x = 0, y = 50, width = 50, height = 50 }
              }
            , { iconImageName = "796-812x1815.jpg"
              , title = "Circle"
              , description = "Circle description"
              , date = Date.fromPosix Time.utc (Time.millisToPosix 0)
              , hitbox = { x = 100, y = 50, width = 50, height = 50 }
              }
            ]
        )



-- TODO test rawStories has no duplicate icons


type Stories
    = Stories (Array Story.Story)


selectStoryByModalId : String -> Maybe Story.Story
selectStoryByModalId modalId =
    let
        (Stories ss) =
            stories
    in
    ss
        |> Array.filter (\story -> modalId == Story.modalId story)
        |> Array.get 0


map : (Story.Story -> a) -> List a
map f =
    let
        (Stories ss) =
            stories
    in
    Array.map f ss |> Array.toList
