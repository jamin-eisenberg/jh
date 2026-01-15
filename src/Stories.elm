module Stories exposing (Stories, firstStory, initialStories, length, map, selectStoryById)

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
              , hitbox = { x = 0, y = 0, width = 200, height = 200 }
              }
            , { iconImageName = "796-812x1815.jpg"
              , title = "Rectangle"
              , description = [ Story.text "Rectangle description" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 0)
              , hitbox = { x = 0, y = 2000, width = 200, height = 200 }
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
              , hitbox = { x = 2000, y = 0, width = 200, height = 400 }
              }
            ]
        )


type Stories
    = Stories (Array Story.Story)


selectStoryById : String -> Stories -> Maybe { currentIndex : Int, current : Story.Story, previous : Maybe Story.Story, next : Maybe Story.Story }
selectStoryById storyId stories =
    let
        (Stories ss) =
            stories

        maybeIndexCurrent =
            ss
                |> Array.indexedMap (\i story -> ( i, story ))
                |> Array.filter (\( _, story ) -> storyId == Story.storyId story)
                |> Array.get 0
    in
    maybeIndexCurrent
        |> Maybe.map
            (\( index, current ) ->
                { currentIndex = index
                , current = current
                , previous = Array.get (index - 1) ss
                , next = Array.get (index + 1) ss
                }
            )


map : (Story.Story -> a) -> Stories -> List a
map f stories =
    let
        (Stories ss) =
            stories
    in
    Array.map f ss |> Array.toList


length (Stories stories) =
    Array.length stories


firstStory : Stories -> Maybe Story.Story
firstStory (Stories stories) =
    Array.get 0 stories
