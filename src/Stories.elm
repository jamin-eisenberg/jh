module Stories exposing (Stories, initialStories, map, selectStoryById)

import Array exposing (Array)
import Date
import List exposing (repeat)
import Story
import Time


initialStories : Stories
initialStories =
    Stories
        (Array.fromList
            [ { iconImageName = "796-812x1815.jpg"
              , title = "Squ are#"
              , description = [ Story.text "Square description", Story.image "796-812x1815.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 0)
              , hitbox = { x = 0, y = 50, width = 50, height = 50 }
              }
            , { iconImageName = "796-812x1815.jpg"
              , title = "Circle"
              , description =
                    repeat 3
                        (repeat 51 "Circle description"
                            |> String.join ""
                            |> Story.text
                        )
                        ++ [ Story.image "796-812x1815.jpg", Story.image "796-812x1815.jpg" ]
                        ++ repeat 3
                            (repeat 51 "Circle description"
                                |> String.join ""
                                |> Story.text
                            )
              , date = Date.fromPosix Time.utc (Time.millisToPosix 0)
              , hitbox = { x = 100, y = 50, width = 50, height = 50 }
              }
            ]
        )


type Stories
    = Stories (Array Story.Story)


selectStoryById : String -> Stories -> Maybe Story.Story
selectStoryById storyId stories =
    let
        (Stories ss) =
            stories
    in
    ss
        |> Array.filter (\story -> storyId == Story.storyId story)
        |> Array.get 0


map : (Story.Story -> a) -> Stories -> List a
map f stories =
    let
        (Stories ss) =
            stories
    in
    Array.map f ss |> Array.toList
