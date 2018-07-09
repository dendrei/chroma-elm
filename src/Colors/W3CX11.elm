module Colors.W3CX11
    exposing
        ( w3cx11
        , named
        , aliceBlue
        , antiqueWhite
        , aquamarine
        , aqua
        , azure
        , black
        , indigo
        , white
        )

import Dict
import Result
import Color exposing (Color, rgb)


named : String -> Result String Color.Color
named str =
    Result.fromMaybe ("Cannot find " ++ str) (Dict.get str w3cx11)


aliceBlue : Color
aliceBlue =
    rgb 240 248 255


antiqueWhite : Color
antiqueWhite =
    rgb 250 235 215


aquamarine : Color
aquamarine =
    rgb 127 255 212


aqua : Color
aqua =
    rgb 0 255 255


azure : Color
azure =
    rgb 240 255 255


beige : Color
beige =
    rgb 245 245 220


bisque : Color
bisque =
    rgb 255 228 196


black : Color
black =
    Color.black


blanchedalmond : Color
blanchedalmond =
    rgb 255 235 205


blue : Color
blue =
    rgb 0 0 255


blueviolet : Color
blueviolet =
    rgb 138 43 226


brown : Color
brown =
    rgb 165 42 42


burlywood : Color
burlywood =
    rgb 222 184 135


indigo : Color
indigo =
    rgb 75 0 130


white : Color
white =
    Color.white


w3cx11 : Dict.Dict String Color
w3cx11 =
    Dict.fromList
        [ ( "indigo", indigo )
        , ( "gold", rgb 255 215 0 )
        , ( "hotpink", rgb 255 105 180 )
        , ( "firebrick", rgb 178 34 34 )
        , ( "indianred", rgb 205 92 92 )
        , ( "yellow", rgb 255 255 0 )
        , ( "mistyrose", rgb 255 228 225 )
        , ( "darkolivegreen", rgb 85 107 47 )
        , ( "olive", rgb 128 128 0 )
        , ( "darkseagreen", rgb 143 188 143 )
        , ( "pink", rgb 255 192 203 )
        , ( "tomato", rgb 255 99 71 )
        , ( "lightcoral", rgb 240 128 128 )
        , ( "orangered", rgb 255 69 0 )
        , ( "navajowhite", rgb 255 222 173 )
        , ( "lime", rgb 0 255 0 )
        , ( "palegreen", rgb 152 251 152 )
        , ( "darkslategrey", rgb 47 79 79 )
        , ( "greenyellow", rgb 173 255 47 )
        , ( "burlywood", burlywood )
        , ( "seashell", rgb 255 245 238 )
        , ( "mediumspringgreen", rgb 0 250 154 )
        , ( "fuchsia", rgb 255 0 255 )
        , ( "papayawhip", rgb 255 239 213 )
        , ( "blanchedalmond", blanchedalmond )
        , ( "chartreuse", rgb 127 255 0 )
        , ( "dimgray", rgb 105 105 105 )
        , ( "black", black )
        , ( "peachpuff", rgb 255 218 185 )
        , ( "springgreen", rgb 0 255 127 )
        , ( "aquamarine", aquamarine )
        , ( "white", white )
        , ( "orange", rgb 255 165 0 )
        , ( "lightsalmon", rgb 255 160 122 )
        , ( "darkslategray", rgb 47 79 79 )
        , ( "brown", brown )
        , ( "ivory", rgb 255 255 240 )
        , ( "dodgerblue", rgb 30 144 255 )
        , ( "peru", rgb 205 133 63 )
        , ( "lawngreen", rgb 124 252 0 )
        , ( "chocolate", rgb 210 105 30 )
        , ( "crimson", rgb 220 20 60 )
        , ( "forestgreen", rgb 34 139 34 )
        , ( "darkgrey", rgb 169 169 169 )
        , ( "lightseagreen", rgb 32 178 170 )
        , ( "cyan", rgb 0 255 255 )
        , ( "mintcream", rgb 245 255 250 )
        , ( "silver", rgb 192 192 192 )
        , ( "antiquewhite", antiqueWhite )
        , ( "mediumorchid", rgb 186 85 211 )
        , ( "skyblue", rgb 135 206 235 )
        , ( "gray", rgb 128 128 128 )
        , ( "darkturquoise", rgb 0 206 209 )
        , ( "goldenrod", rgb 218 165 32 )
        , ( "darkgreen", rgb 0 100 0 )
        , ( "floralwhite", rgb 255 250 240 )
        , ( "darkviolet", rgb 148 0 211 )
        , ( "darkgray", rgb 169 169 169 )
        , ( "moccasin", rgb 255 228 181 )
        , ( "saddlebrown", rgb 139 69 19 )
        , ( "grey", rgb 128 128 128 )
        , ( "darkslateblue", rgb 47 79 79 )
        , ( "lightskyblue", rgb 135 206 250 )
        , ( "lightpink", rgb 255 182 193 )
        , ( "mediumvioletred", rgb 199 21 133 )
        , ( "slategrey", rgb 112 128 144 )
        , ( "red", rgb 255 0 0 )
        , ( "deeppink", rgb 255 20 147 )
        , ( "limegreen", rgb 50 205 50 )
        , ( "darkmagenta", rgb 139 0 139 )
        , ( "palegoldenrod", rgb 238 232 170 )
        , ( "plum", rgb 221 160 221 )
        , ( "turquoise", rgb 64 224 208 )
        , ( "lightgrey", rgb 211 211 211 )
        , ( "lightgoldenrodyellow", rgb 250 250 210 )
        , ( "darkgoldenrod", rgb 184 134 11 )
        , ( "lavender", rgb 230 230 250 )
        , ( "maroon", rgb 128 0 0 )
        , ( "yellowgreen", rgb 154 205 50 )
        , ( "sandybrown", rgb 244 164 96 )
        , ( "thistle", rgb 216 191 216 )
        , ( "violet", rgb 238 130 238 )
        , ( "navy", rgb 0 0 128 )
        , ( "magenta", rgb 255 0 255 )
        , ( "dimgrey", rgb 105 105 105 )
        , ( "tan", rgb 210 180 140 )
        , ( "rosybrown", rgb 188 143 143 )
        , ( "olivedrab", rgb 107 142 35 )
        , ( "blue", blue )
        , ( "lightblue", rgb 173 216 230 )
        , ( "ghostwhite", rgb 248 248 255 )
        , ( "honeydew", rgb 240 255 240 )
        , ( "cornflowerblue", rgb 100 149 237 )
        , ( "slateblue", rgb 106 90 205 )
        , ( "linen", rgb 250 240 230 )
        , ( "darkblue", rgb 0 0 139 )
        , ( "powderblue", rgb 176 224 230 )
        , ( "seagreen", rgb 46 139 87 )
        , ( "darkkhaki", rgb 189 183 107 )
        , ( "snow", rgb 255 250 250 )
        , ( "sienna", rgb 160 82 45 )
        , ( "mediumblue", rgb 0 0 205 )
        , ( "royalblue", rgb 65 105 225 )
        , ( "lightcyan", rgb 224 255 255 )
        , ( "green", rgb 0 128 0 )
        , ( "mediumpurple", rgb 147 112 219 )
        , ( "midnightblue", rgb 25 25 112 )
        , ( "cornsilk", rgb 255 248 220 )
        , ( "paleturquoise", rgb 175 238 238 )
        , ( "bisque", bisque )
        , ( "slategray", rgb 112 128 144 )
        , ( "darkcyan", rgb 0 139 139 )
        , ( "khaki", rgb 240 230 140 )
        , ( "wheat", rgb 245 222 179 )
        , ( "teal", rgb 0 128 128 )
        , ( "darkorchid", rgb 153 50 204 )
        , ( "deepskyblue", rgb 0 191 255 )
        , ( "salmon", rgb 250 128 114 )
        , ( "darkred", rgb 139 0 0 )
        , ( "steelblue", rgb 70 130 180 )
        , ( "palevioletred", rgb 219 112 147 )
        , ( "lightslategray", rgb 119 136 153 )
        , ( "aliceblue", aliceBlue )
        , ( "lightslategrey", rgb 119 136 153 )
        , ( "lightgreen", rgb 144 238 144 )
        , ( "orchid", rgb 218 112 214 )
        , ( "gainsboro", rgb 220 220 220 )
        , ( "mediumseagreen", rgb 60 179 113 )
        , ( "lightgray", rgb 211 211 211 )
        , ( "mediumturquoise", rgb 72 209 204 )
        , ( "lemonchiffon", rgb 255 250 205 )
        , ( "cadetblue", rgb 95 158 160 )
        , ( "lightyellow", rgb 255 255 224 )
        , ( "lavenderblush", rgb 255 240 245 )
        , ( "coral", rgb 255 127 80 )
        , ( "purple", rgb 128 0 128 )
        , ( "aqua", aqua )
        , ( "whitesmoke", rgb 245 245 245 )
        , ( "mediumslateblue", rgb 123 104 238 )
        , ( "darkorange", rgb 255 140 0 )
        , ( "mediumaquamarine", rgb 102 205 170 )
        , ( "darksalmon", rgb 233 150 122 )
        , ( "beige", beige )
        , ( "blueviolet", blueviolet )
        , ( "azure", azure )
        , ( "lightsteelblue", rgb 176 196 222 )
        , ( "oldlace", rgb 253 245 230 )
        , ( "rebeccapurple", rgb 102 51 153 )
        ]
