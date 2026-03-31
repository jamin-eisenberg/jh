module StoriesData exposing (initialStories)

import Array
import Date
import List exposing (repeat)
import Stories exposing (Stories(..))
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
              , aabb = { x = 0, y = 0, width = 200, height = 200 }
              }
            , { iconImageName = "796-812x1815.jpg"
              , title = "Rectangle"
              , description = [ Story.text "Rectangle description" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 0)
              , aabb = { x = 0, y = 2000, width = 200, height = 200 }
              }
            , { iconImageName = "796-812x1815.jpg"
              , title = "Circle"
              , description =
                    repeat 3
                        (repeat 51 "Circle description "
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
              , aabb = { x = 2000, y = 0, width = 200, height = 400 }
              }
            ]
        )
