module Chroma.Colors.W3CX11 exposing
    ( color, named, w3cx11
    , aliceBlue, antiqueWhite, aqua, azure, aquamarine
    , beige, bisque, black, blanchedalmond, blue, blueviolet, brown, burlywood, cadetblue
    , chocolate, coral, cornflowerblue, cornsilk, crimson, cyan, chartreuse
    , darkolivegreen, darkseagreen, darkslategrey, dimgray, darkslategray, dodgerblue, darkgrey, darkturquoise, darkgreen, darkviolet, darkgray, darkslateblue, deeppink, darkmagenta, darkgoldenrod, dimgrey, darkblue, darkkhaki, darkcyan, darkorchid, deepskyblue, darkred, darkorange, darksalmon
    , firebrick, floralwhite, forestgreen, fuchsia
    , gainsboro, ghostwhite, gold, goldenrod, green, greenyellow, gray, grey
    , honeydew, hotpink
    , indianred, indigo, ivory
    , khaki
    , lavender, lavenderblush, lawngreen, lemonchiffon, lightblue, lightcoral, lightcyan, lightgoldenrodyellow, lightgreen, lightgray, lightgrey, lightpink, lightseagreen, lightsalmon, lightskyblue, lightslategray, lightslategrey, lightsteelblue, lightyellow, lime, limegreen, linen
    , magenta, maroon, mediumaquamarine, mediumblue, mediumpurple, mediumslateblue, mediumorchid, mediumspringgreen, mediumseagreen, mediumturquoise, mediumvioletred, midnightblue, mintcream, mistyrose, moccasin
    , navajowhite, navy
    , oldlace, olive, olivedrab, orange, orangered, orchid
    , palegoldenrod, palegreen, paleturquoise, papayawhip, peachpuff, palevioletred, peru, powderblue, pink, plum, purple
    , red, rebeccapurple, rosybrown, royalblue
    , sandybrown, salmon, seagreen, seashell, sienna, silver, skyblue, slateblue, slategray, slategrey, snow, springgreen, steelblue
    , tan, teal, thistle, tomato, turquoise
    , violet
    , wheat, white, whitesmoke
    , yellow, yellowgreen
    )

{-| All of the [X11 color names](https://en.wikipedia.org/wiki/X11_color_names)


# Definition

@docs color, named, w3cx11


# Colors

@docs aliceBlue, antiqueWhite, aqua, azure, aquamarine
@docs beige, bisque, black, blanchedalmond, blue, blueviolet, brown, burlywood, cadetblue
@docs chocolate, coral, cornflowerblue, cornsilk, crimson, cyan, chartreuse
@docs darkolivegreen, darkseagreen, darkslategrey, dimgray, darkslategray, dodgerblue, darkgrey, darkturquoise, darkgreen, darkviolet, darkgray, darkslateblue, deeppink, darkmagenta, darkgoldenrod, dimgrey, darkblue, darkkhaki, darkcyan, darkorchid, deepskyblue, darkred, darkorange, darksalmon
@docs firebrick, floralwhite, forestgreen, fuchsia
@docs gainsboro, ghostwhite, gold, goldenrod, green, greenyellow, gray, grey
@docs honeydew, hotpink
@docs indianred, indigo, ivory
@docs khaki
@docs lavender, lavenderblush, lawngreen, lemonchiffon, lightblue, lightcoral, lightcyan, lightgoldenrodyellow, lightgreen, lightgray, lightgrey, lightpink, lightseagreen, lightsalmon, lightskyblue, lightslategray, lightslategrey, lightsteelblue, lightyellow, lime, limegreen, linen
@docs magenta, maroon, mediumaquamarine, mediumblue, mediumpurple, mediumslateblue, mediumorchid, mediumspringgreen, mediumseagreen, mediumturquoise, mediumvioletred, midnightblue, mintcream, mistyrose, moccasin
@docs navajowhite, navy
@docs oldlace, olive, olivedrab, orange, orangered, orchid
@docs palegoldenrod, palegreen, paleturquoise, papayawhip, peachpuff, palevioletred, peru, powderblue, pink, plum, purple
@docs red, rebeccapurple, rosybrown, royalblue
@docs sandybrown, salmon, seagreen, seashell, sienna, silver, skyblue, slateblue, slategray, slategrey, snow, springgreen, steelblue
@docs tan, teal, thistle, tomato, turquoise
@docs violet
@docs wheat, white, whitesmoke
@docs yellow, yellowgreen

-}

import Chroma.Ops.Numeric as Numeric
import Color exposing (Color, rgb255, toRgba)
import Dict
import Result


{-| Lookup a color by name.

    named "cyan"
    --> Ok (RgbaSpace 0 1 1 1) : Result String Color.Color

-}
named : String -> Result String Color.Color
named str =
    Result.fromMaybe ("Cannot find " ++ str) (Dict.get str w3cx11)


{-| Lookup a color by value.

    Color.rgb 0 255 255
    --> Ok "aqua" : Result String String

-}
color : Color -> Result String String
color c =
    let
        rgba =
            toRgba c

        toS col f =
            f col |> (\x -> x * 255) |> round |> String.fromInt

        errorString =
            "Cannot find RGB " ++ toS rgba .red ++ ", " ++ toS rgba .green ++ ", " ++ toS rgba .blue
    in
    Result.fromMaybe errorString (Dict.get (Numeric.colorToInt c) intToW3cx11)


{-| TBD
-}
aliceBlue : Color
aliceBlue =
    rgb255 240 248 255


{-| TBD
-}
antiqueWhite : Color
antiqueWhite =
    rgb255 250 235 215


{-| TBD
-}
aquamarine : Color
aquamarine =
    rgb255 127 255 212


{-| TBD
-}
aqua : Color
aqua =
    rgb255 0 255 255


{-| TBD
-}
azure : Color
azure =
    rgb255 240 255 255


{-| TBD
-}
beige : Color
beige =
    rgb255 245 245 220


{-| TBD
-}
bisque : Color
bisque =
    rgb255 255 228 196


{-| TBD
-}
black : Color
black =
    Color.black


{-| TBD
-}
blanchedalmond : Color
blanchedalmond =
    rgb255 255 235 205


{-| TBD
-}
blue : Color
blue =
    rgb255 0 0 255


{-| TBD
-}
blueviolet : Color
blueviolet =
    rgb255 138 43 226


{-| TBD
-}
brown : Color
brown =
    rgb255 165 42 42


{-| TBD
-}
burlywood : Color
burlywood =
    rgb255 222 184 135


{-| TBD
-}
cadetblue : Color
cadetblue =
    rgb255 95 158 160


{-| TBD
-}
chartreuse : Color
chartreuse =
    rgb255 127 255 0


{-| TBD
-}
chocolate : Color
chocolate =
    rgb255 210 105 30


{-| TBD
-}
coral : Color
coral =
    rgb255 255 127 80


{-| TBD
-}
cornflowerblue : Color
cornflowerblue =
    rgb255 100 149 237


{-| TBD
-}
crimson : Color
crimson =
    rgb255 220 20 60


{-| TBD
-}
cyan : Color
cyan =
    rgb255 0 255 255


{-| TBD
-}
cornsilk : Color
cornsilk =
    rgb255 255 248 220


{-| TBD
-}
darkolivegreen : Color
darkolivegreen =
    rgb255 85 107 47


{-| TBD
-}
darkseagreen : Color
darkseagreen =
    rgb255 143 188 143


{-| TBD
-}
darkslategrey : Color
darkslategrey =
    rgb255 47 79 79


{-| TBD
-}
dimgray : Color
dimgray =
    rgb255 105 105 105


{-| TBD
-}
darkslategray : Color
darkslategray =
    rgb255 47 79 79


{-| TBD
-}
dodgerblue : Color
dodgerblue =
    rgb255 30 144 255


{-| TBD
-}
darkgrey : Color
darkgrey =
    rgb255 169 169 169


{-| TBD
-}
darkturquoise : Color
darkturquoise =
    rgb255 0 206 209


{-| TBD
-}
darkgreen : Color
darkgreen =
    rgb255 0 100 0


{-| TBD
-}
darkviolet : Color
darkviolet =
    rgb255 148 0 211


{-| TBD
-}
darkgray : Color
darkgray =
    rgb255 169 169 169


{-| TBD
-}
darkslateblue : Color
darkslateblue =
    rgb255 72 61 139


{-| TBD
-}
deeppink : Color
deeppink =
    rgb255 255 20 147


{-| TBD
-}
darkmagenta : Color
darkmagenta =
    rgb255 139 0 139


{-| TBD
-}
darkgoldenrod : Color
darkgoldenrod =
    rgb255 184 134 11


{-| TBD
-}
dimgrey : Color
dimgrey =
    rgb255 105 105 105


{-| TBD
-}
darkblue : Color
darkblue =
    rgb255 0 0 139


{-| TBD
-}
darkkhaki : Color
darkkhaki =
    rgb255 189 183 107


{-| TBD
-}
darkcyan : Color
darkcyan =
    rgb255 0 139 139


{-| TBD
-}
darkorchid : Color
darkorchid =
    rgb255 153 50 204


{-| TBD
-}
deepskyblue : Color
deepskyblue =
    rgb255 0 191 255


{-| TBD
-}
darkred : Color
darkred =
    rgb255 139 0 0


{-| TBD
-}
darkorange : Color
darkorange =
    rgb255 255 140 0


{-| TBD
-}
darksalmon : Color
darksalmon =
    rgb255 233 150 122


{-| TBD
-}
forestgreen : Color
forestgreen =
    rgb255 34 139 34


{-| TBD
-}
firebrick : Color
firebrick =
    rgb255 178 34 34


{-| TBD
-}
floralwhite : Color
floralwhite =
    rgb255 255 250 240


{-| TBD
-}
fuchsia : Color
fuchsia =
    rgb255 255 0 255


{-| TBD
-}
gainsboro : Color
gainsboro =
    rgb255 220 220 220


{-| TBD
-}
ghostwhite : Color
ghostwhite =
    rgb255 248 248 255


{-| TBD
-}
gold : Color
gold =
    rgb255 255 215 0


{-| TBD
-}
green : Color
green =
    rgb255 0 128 0


{-| TBD
-}
greenyellow : Color
greenyellow =
    rgb255 173 255 47


{-| TBD
-}
goldenrod : Color
goldenrod =
    rgb255 218 165 32


{-| TBD
-}
gray : Color
gray =
    rgb255 128 128 128


{-| TBD
-}
grey : Color
grey =
    rgb255 128 128 128


{-| TBD
-}
honeydew : Color
honeydew =
    rgb255 240 255 240


{-| TBD
-}
hotpink : Color
hotpink =
    rgb255 255 105 180


{-| TBD
-}
indigo : Color
indigo =
    rgb255 75 0 130


{-| TBD
-}
indianred : Color
indianred =
    rgb255 205 92 92


{-| TBD
-}
ivory : Color
ivory =
    rgb255 255 255 240


{-| TBD
-}
khaki : Color
khaki =
    rgb255 240 230 140


{-| TBD
-}
lawngreen : Color
lawngreen =
    rgb255 124 252 0


{-| TBD
-}
lavender : Color
lavender =
    rgb255 230 230 250


{-| TBD
-}
lavenderblush : Color
lavenderblush =
    rgb255 255 240 245


{-| TBD
-}
lemonchiffon : Color
lemonchiffon =
    rgb255 255 250 205


{-| TBD
-}
lightblue : Color
lightblue =
    rgb255 173 216 230


{-| TBD
-}
lightcoral : Color
lightcoral =
    rgb255 240 128 128


{-| TBD
-}
lightcyan : Color
lightcyan =
    rgb255 224 255 255


{-| TBD
-}
lightgoldenrodyellow : Color
lightgoldenrodyellow =
    rgb255 250 250 210


{-| TBD
-}
lightgreen : Color
lightgreen =
    rgb255 144 238 144


{-| TBD
-}
lightgray : Color
lightgray =
    rgb255 211 211 211


{-| TBD
-}
lightgrey : Color
lightgrey =
    rgb255 211 211 211


{-| TBD
-}
lightpink : Color
lightpink =
    rgb255 255 182 193


{-| TBD
-}
lightsalmon : Color
lightsalmon =
    rgb255 255 160 122


{-| TBD
-}
lightseagreen : Color
lightseagreen =
    rgb255 32 178 170


{-| TBD
-}
lightskyblue : Color
lightskyblue =
    rgb255 135 206 250


{-| TBD
-}
lightslategray : Color
lightslategray =
    rgb255 119 136 153


{-| TBD
-}
lightslategrey : Color
lightslategrey =
    rgb255 119 136 153


{-| TBD
-}
lightsteelblue : Color
lightsteelblue =
    rgb255 176 196 222


{-| TBD
-}
lightyellow : Color
lightyellow =
    rgb255 255 255 224


{-| TBD
-}
lime : Color
lime =
    rgb255 0 255 0


{-| TBD
-}
limegreen : Color
limegreen =
    rgb255 50 205 50


{-| TBD
-}
linen : Color
linen =
    rgb255 250 240 230


{-| TBD
-}
navajowhite : Color
navajowhite =
    rgb255 255 222 173


{-| TBD
-}
navy : Color
navy =
    rgb255 0 0 128


{-| TBD
-}
magenta : Color
magenta =
    rgb255 255 0 255


{-| TBD
-}
maroon : Color
maroon =
    rgb255 128 0 0


{-| TBD
-}
mediumaquamarine : Color
mediumaquamarine =
    rgb255 102 205 170


{-| TBD
-}
mediumblue : Color
mediumblue =
    rgb255 0 0 205


{-| TBD
-}
mediumpurple : Color
mediumpurple =
    rgb255 147 112 219


{-| TBD
-}
mediumslateblue : Color
mediumslateblue =
    rgb255 123 104 238


{-| TBD
-}
mediumorchid : Color
mediumorchid =
    rgb255 186 85 211


{-| TBD
-}
mediumspringgreen : Color
mediumspringgreen =
    rgb255 0 250 154


{-| TBD
-}
mediumseagreen : Color
mediumseagreen =
    rgb255 60 179 113


{-| TBD
-}
mediumturquoise : Color
mediumturquoise =
    rgb255 72 209 204


{-| TBD
-}
mediumvioletred : Color
mediumvioletred =
    rgb255 199 21 133


{-| TBD
-}
midnightblue : Color
midnightblue =
    rgb255 25 25 112


{-| TBD
-}
mintcream : Color
mintcream =
    rgb255 245 255 250


{-| TBD
-}
mistyrose : Color
mistyrose =
    rgb255 255 228 225


{-| TBD
-}
moccasin : Color
moccasin =
    rgb255 255 228 181


{-| TBD
-}
oldlace : Color
oldlace =
    rgb255 253 245 230


{-| TBD
-}
olive : Color
olive =
    rgb255 128 128 0


{-| TBD
-}
olivedrab : Color
olivedrab =
    rgb255 107 142 35


{-| TBD
-}
orange : Color
orange =
    rgb255 255 165 0


{-| TBD
-}
orangered : Color
orangered =
    rgb255 255 69 0


{-| TBD
-}
orchid : Color
orchid =
    rgb255 218 112 214


{-| TBD
-}
palegoldenrod : Color
palegoldenrod =
    rgb255 238 232 170


{-| TBD
-}
palegreen : Color
palegreen =
    rgb255 152 251 152


{-| TBD
-}
paleturquoise : Color
paleturquoise =
    rgb255 175 238 238


{-| TBD
-}
palevioletred : Color
palevioletred =
    rgb255 219 112 147


{-| TBD
-}
papayawhip : Color
papayawhip =
    rgb255 255 239 213


{-| TBD
-}
peachpuff : Color
peachpuff =
    rgb255 255 218 185


{-| TBD
-}
peru : Color
peru =
    rgb255 205 133 63


{-| TBD
-}
pink : Color
pink =
    rgb255 255 192 203


{-| TBD
-}
plum : Color
plum =
    rgb255 221 160 221


{-| TBD
-}
powderblue : Color
powderblue =
    rgb255 176 224 230


{-| TBD
-}
purple : Color
purple =
    rgb255 128 0 128


{-| TBD
-}
rebeccapurple : Color
rebeccapurple =
    rgb255 102 51 153


{-| TBD
-}
red : Color
red =
    rgb255 255 0 0


{-| TBD
-}
rosybrown : Color
rosybrown =
    rgb255 188 143 143


{-| TBD
-}
royalblue : Color
royalblue =
    rgb255 65 105 225


{-| TBD
-}
saddlebrown : Color
saddlebrown =
    rgb255 139 69 19


{-| TBD
-}
salmon : Color
salmon =
    rgb255 250 128 114


{-| TBD
-}
sandybrown : Color
sandybrown =
    rgb255 244 164 96


{-| TBD
-}
seagreen : Color
seagreen =
    rgb255 46 139 87


{-| TBD
-}
seashell : Color
seashell =
    rgb255 255 245 238


{-| TBD
-}
sienna : Color
sienna =
    rgb255 160 82 45


{-| TBD
-}
silver : Color
silver =
    rgb255 192 192 192


{-| TBD
-}
skyblue : Color
skyblue =
    rgb255 135 206 235


{-| TBD
-}
slateblue : Color
slateblue =
    rgb255 106 90 205


{-| TBD
-}
slategray : Color
slategray =
    rgb255 112 128 144


{-| TBD
-}
slategrey : Color
slategrey =
    rgb255 112 128 144


{-| TBD
-}
snow : Color
snow =
    rgb255 255 250 250


{-| TBD
-}
springgreen : Color
springgreen =
    rgb255 0 255 127


{-| TBD
-}
steelblue : Color
steelblue =
    rgb255 70 130 180


{-| TBD
-}
tan : Color
tan =
    rgb255 210 180 140


{-| TBD
-}
teal : Color
teal =
    rgb255 0 128 128


{-| TBD
-}
thistle : Color
thistle =
    rgb255 216 191 216


{-| TBD
-}
tomato : Color
tomato =
    rgb255 255 99 71


{-| TBD
-}
turquoise : Color
turquoise =
    rgb255 64 224 208


{-| TBD
-}
violet : Color
violet =
    rgb255 238 130 238


{-| TBD
-}
wheat : Color
wheat =
    rgb255 245 222 179


{-| TBD
-}
white : Color
white =
    Color.white


{-| TBD
-}
whitesmoke : Color
whitesmoke =
    rgb255 245 245 245


{-| TBD
-}
yellow : Color
yellow =
    rgb255 255 255 0


{-| TBD
-}
yellowgreen : Color
yellowgreen =
    rgb255 154 205 50


{-| TBD
-}
w3cx11 : Dict.Dict String Color
w3cx11 =
    Dict.fromList w3cx11List


{-| TBD
-}
intToW3cx11 : Dict.Dict Int String
intToW3cx11 =
    List.map (\( s, c ) -> ( Numeric.colorToInt c, s )) w3cx11List |> Dict.fromList


w3cx11List : List ( String, Color )
w3cx11List =
    [ ( "indigo", indigo )
    , ( "gold", gold )
    , ( "hotpink", hotpink )
    , ( "firebrick", firebrick )
    , ( "indianred", indianred )
    , ( "yellow", yellow )
    , ( "mistyrose", mistyrose )
    , ( "darkolivegreen", darkolivegreen )
    , ( "olive", olive )
    , ( "darkseagreen", darkseagreen )
    , ( "pink", pink )
    , ( "tomato", tomato )
    , ( "lightcoral", lightcoral )
    , ( "orangered", orangered )
    , ( "navajowhite", navajowhite )
    , ( "lime", lime )
    , ( "palegreen", palegreen )
    , ( "darkslategrey", darkslategrey )
    , ( "greenyellow", greenyellow )
    , ( "burlywood", burlywood )
    , ( "seashell", seashell )
    , ( "mediumspringgreen", mediumspringgreen )
    , ( "fuchsia", fuchsia )
    , ( "papayawhip", papayawhip )
    , ( "blanchedalmond", blanchedalmond )
    , ( "chartreuse", chartreuse )
    , ( "dimgray", dimgray )
    , ( "black", black )
    , ( "peachpuff", peachpuff )
    , ( "springgreen", springgreen )
    , ( "aquamarine", aquamarine )
    , ( "white", white )
    , ( "orange", orange )
    , ( "lightsalmon", lightsalmon )
    , ( "darkslategray", darkslategray )
    , ( "brown", brown )
    , ( "ivory", ivory )
    , ( "dodgerblue", dodgerblue )
    , ( "peru", peru )
    , ( "lawngreen", lawngreen )
    , ( "chocolate", chocolate )
    , ( "crimson", crimson )
    , ( "forestgreen", forestgreen )
    , ( "darkgrey", darkgrey )
    , ( "lightseagreen", lightseagreen )
    , ( "cyan", cyan )
    , ( "mintcream", mintcream )
    , ( "silver", silver )
    , ( "antiquewhite", antiqueWhite )
    , ( "mediumorchid", mediumorchid )
    , ( "skyblue", skyblue )
    , ( "gray", gray )
    , ( "darkturquoise", darkturquoise )
    , ( "goldenrod", goldenrod )
    , ( "darkgreen", darkgreen )
    , ( "floralwhite", floralwhite )
    , ( "darkviolet", darkviolet )
    , ( "darkgray", darkgray )
    , ( "moccasin", moccasin )
    , ( "saddlebrown", saddlebrown )
    , ( "grey", grey )
    , ( "darkslateblue", darkslateblue )
    , ( "lightskyblue", lightskyblue )
    , ( "lightpink", lightpink )
    , ( "mediumvioletred", mediumvioletred )
    , ( "slategrey", slategrey )
    , ( "red", red )
    , ( "deeppink", deeppink )
    , ( "limegreen", limegreen )
    , ( "darkmagenta", darkmagenta )
    , ( "palegoldenrod", palegoldenrod )
    , ( "plum", plum )
    , ( "turquoise", turquoise )
    , ( "lightgrey", lightgrey )
    , ( "lightgoldenrodyellow", lightgoldenrodyellow )
    , ( "darkgoldenrod", darkgoldenrod )
    , ( "lavender", lavender )
    , ( "maroon", maroon )
    , ( "yellowgreen", yellowgreen )
    , ( "sandybrown", sandybrown )
    , ( "thistle", thistle )
    , ( "violet", violet )
    , ( "navy", navy )
    , ( "magenta", magenta )
    , ( "dimgrey", dimgrey )
    , ( "tan", tan )
    , ( "rosybrown", rosybrown )
    , ( "olivedrab", olivedrab )
    , ( "blue", blue )
    , ( "lightblue", lightblue )
    , ( "ghostwhite", ghostwhite )
    , ( "honeydew", honeydew )
    , ( "cornflowerblue", cornflowerblue )
    , ( "slateblue", slateblue )
    , ( "linen", linen )
    , ( "darkblue", darkblue )
    , ( "powderblue", powderblue )
    , ( "seagreen", seagreen )
    , ( "darkkhaki", darkkhaki )
    , ( "snow", snow )
    , ( "sienna", sienna )
    , ( "mediumblue", mediumblue )
    , ( "royalblue", royalblue )
    , ( "lightcyan", lightcyan )
    , ( "green", green )
    , ( "mediumpurple", mediumpurple )
    , ( "midnightblue", midnightblue )
    , ( "cornsilk", cornsilk )
    , ( "paleturquoise", paleturquoise )
    , ( "bisque", bisque )
    , ( "slategray", slategray )
    , ( "darkcyan", darkcyan )
    , ( "khaki", khaki )
    , ( "wheat", wheat )
    , ( "teal", teal )
    , ( "darkorchid", darkorchid )
    , ( "deepskyblue", deepskyblue )
    , ( "salmon", salmon )
    , ( "darkred", darkred )
    , ( "steelblue", steelblue )
    , ( "palevioletred", palevioletred )
    , ( "lightslategray", lightslategray )
    , ( "aliceblue", aliceBlue )
    , ( "lightslategrey", lightslategrey )
    , ( "lightgreen", lightgreen )
    , ( "orchid", orchid )
    , ( "gainsboro", gainsboro )
    , ( "mediumseagreen", mediumseagreen )
    , ( "lightgray", lightgray )
    , ( "mediumturquoise", mediumturquoise )
    , ( "lemonchiffon", lemonchiffon )
    , ( "cadetblue", cadetblue )
    , ( "lightyellow", lightyellow )
    , ( "lavenderblush", lavenderblush )
    , ( "coral", coral )
    , ( "purple", purple )
    , ( "aqua", aqua )
    , ( "whitesmoke", whitesmoke )
    , ( "mediumslateblue", mediumslateblue )
    , ( "darkorange", darkorange )
    , ( "mediumaquamarine", mediumaquamarine )
    , ( "darksalmon", darksalmon )
    , ( "beige", beige )
    , ( "blueviolet", blueviolet )
    , ( "azure", azure )
    , ( "lightsteelblue", lightsteelblue )
    , ( "oldlace", oldlace )
    , ( "rebeccapurple", rebeccapurple )
    ]
