module Story exposing (Story, storyId)

import Date exposing (Date)
import Url


type alias Story =
    { iconImageName : String
    , title : String
    , description : String
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
