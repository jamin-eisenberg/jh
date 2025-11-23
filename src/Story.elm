module Story exposing (DescriptionContent, Story, image, imagePath, storyId, text, viewDescriptionContent)

import Date exposing (Date)
import Html exposing (Html)
import Html.Attributes exposing (class, src)
import Url


type DescriptionContent
    = Text String
    | Image String


text desc =
    Text desc


image filename =
    Image filename


type alias Story =
    { iconImageName : String
    , title : String
    , description : List DescriptionContent
    , date : Date
    , hitbox : Rect
    }


type alias Rect =
    { x : Int, y : Int, width : Int, height : Int }


storyId : Story -> String
storyId { title } =
    Url.percentEncode (String.filter (not << isWhitespace) title)


isWhitespace c =
    List.member c [ ' ', '\t', '\n', '\u{000D}' ]


viewDescriptionContent : List DescriptionContent -> Html msg
viewDescriptionContent descriptionContents =
    Html.div [ class "p-2" ]
        (List.map
            (\descriptionContent ->
                case descriptionContent of
                    Text desc ->
                        Html.p [] [ Html.text desc ]

                    Image filename ->
                        Html.img [ src (imagePath filename), class "w-100" ] []
            )
            descriptionContents
        )


imagePath : String -> String
imagePath filename =
    "/images/" ++ filename
