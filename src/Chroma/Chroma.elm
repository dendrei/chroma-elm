module Chroma.Chroma exposing
    ( chroma, scale, distance, distance255, distanceWithLab, domain
    , scaleDefault, scaleWith, domainWith
    )

{-| The attempt here is to provide something similar to <https://gka.github.io/chroma.js/> but also idiomatic Elm.

Currently, incomplete - on Scale works.


# Definition

@docs chroma, scale, distance, distance255, distanceWithLab, domain


# Helpers

@docs scaleDefault, scaleWith, domainWith

-}

import Chroma.Colors.W3CX11 as W3CX11
import Chroma.Converter.In.Hex2Rgb as Hex2Rgb
import Chroma.Converter.Out.ToHex as ToHex
import Chroma.Converter.Out.ToLab as ToLab
import Chroma.Converter.Out.ToRgb as ToRgb
import Chroma.Scale as Scale
import Chroma.Types as Types
import Color as Color
import Flip as Flip
import List.Nonempty as Nonempty
import Result as Result


{-| TBD
-}
chroma : String -> Result String Types.ExtColor
chroma str =
    case W3CX11.named str of
        Ok value ->
            Ok (Types.RGBColor value)

        Err err ->
            Hex2Rgb.hex2rgb str |> Result.map Types.RGBColor


{-| TBD
-}
scaleDefault : ( Scale.Data, Float -> Types.ExtColor )
scaleDefault =
    scaleWith Scale.defaultData Scale.defaultData.colors


{-| TBD
-}
scale : Nonempty.Nonempty Types.ExtColor -> ( Scale.Data, Float -> Types.ExtColor )
scale colors =
    scaleWith Scale.defaultData colors


{-| TBD
-}
scaleWith : Scale.Data -> Nonempty.Nonempty Types.ExtColor -> ( Scale.Data, Float -> Types.ExtColor )
scaleWith data colors =
    let
        newData =
            { data | colors = colors }
    in
    ( newData, Scale.getColor newData )


{-| TBD
-}
domain : Nonempty.Nonempty Float -> Nonempty.Nonempty Types.ExtColor -> ( Scale.Data, Float -> Types.ExtColor )
domain newDomain colors =
    let
        ( newData, f ) =
            scale colors

        domainData =
            Scale.domain newDomain newData
    in
    scaleWith domainData colors


{-| TBD
-}
domainWith : Nonempty.Nonempty Float -> Scale.Data -> Nonempty.Nonempty Types.ExtColor -> ( Scale.Data, Float -> Types.ExtColor )
domainWith newDomain data colors =
    let
        domainData =
            Scale.domain newDomain data
    in
    scaleWith domainData colors


{-| TBD
-}
distanceWithLab : Types.ExtColor -> Types.ExtColor -> Float
distanceWithLab color1 color2 =
    let
        labColor a =
            ToLab.toLab a |> Types.LABColor
    in
    distance (labColor color1) (labColor color2)


{-| TBD
-}
distance255 : Types.ExtColor -> Types.ExtColor -> Float
distance255 color1 color2 =
    let
        fstColor255 =
            ToRgb.toNonEmptyList color1 |> Nonempty.map (\x -> x * 255)

        sndColor255 =
            ToRgb.toNonEmptyList color2 |> Nonempty.map (\x -> x * 255)
    in
    calcDistance fstColor255 sndColor255


{-| TBD
-}
distance : Types.ExtColor -> Types.ExtColor -> Float
distance color1 color2 =
    let
        aColor1 =
            ToRgb.toNonEmptyList color1

        aColor2 =
            ToRgb.toNonEmptyList color2
    in
    calcDistance aColor1 aColor2


calcDistance : Nonempty.Nonempty Float -> Nonempty.Nonempty Float -> Float
calcDistance list1 list2 =
    Nonempty.map2 (\c1 c2 -> (c1 - c2) ^ 2) list1 list2 |> Nonempty.foldl (+) 0 |> sqrt



--mix color1 color2 ratio mode =
--    Debug.crash "unimplemented"
--average colors mode =
--    Debug.crash "unimplemented"
--blend color1 color2 mode =
--    Debug.crash "unimplemented"
--random =
--    Debug.crash "unimplemented"
--brewer brewerName =
--    Debug.crash "unimplemented"
--limits data mode n =
--    Debug.crash "unimplemented"
