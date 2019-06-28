module Chroma.Types exposing (CymkColor, ExtColor(..), Hsla, HslaDegrees, LabColor, Rgba255Color, RgbaColor, LchColor)

{-| Types


# Definition

@docs CymkColor, ExtColor, Hsla, HslaDegrees, LabColor, Rgba255Color, RgbaColor, LchColor

-}

import Color as Color


{-| TBD
-}
type ExtColor
    = RGBColor Color.Color
    | CMYKColor CymkColor
    | LABColor LabColor


{-| TBD
-}
type alias LabColor =
    { lightness : Float
    , labA : Float
    , labB : Float
    }


{-| TBD
-}
type alias CymkColor =
    { cyan : Float
    , magenta : Float
    , yellow : Float
    , black : Float
    }


{-| TBD
-}
type alias RgbaColor =
    { red : Float
    , green : Float
    , blue : Float
    , alpha : Float
    }


{-| TBD
-}
type alias Rgba255Color =
    { red : Int
    , green : Int
    , blue : Int
    , alpha : Float
    }


{-| HSLA where the Hue, Saturation, Lightness and Alpha 0..1.
-}
type alias Hsla =
    { hue : Float
    , saturation : Float
    , lightness : Float
    , alpha : Float
    }


{-| HSLA where the Hue is 0..360, Saturation, Lightness and Alpha 0..1.
-}
type alias HslaDegrees =
    { hue : Float
    , saturation : Float
    , lightness : Float
    , alpha : Float
    }


{-| LCH where Luminance is 0..100, Chroma is 0..230, and Hue is 0..360.
-}
type alias LchColor =
    { luminance : Float
    , chroma : Float
    , hue : Float
    }
