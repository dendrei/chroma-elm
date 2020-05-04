module Chroma.Colors.Material exposing (red, pink, purple, deepPurple, indigo, blue, lightBlue, cyan, teal, green, lightGreen, lime, yellow, amber, orange, deepOrange, brown, gray, blueGray)

{-| [Material 2014 Colours](https://material.io/design/color/the-color-system.html#tools-for-picking-colors)


# Palettes

@docs red, pink, purple, deepPurple, indigo, blue, lightBlue, cyan, teal, green, lightGreen, lime, yellow, amber, orange, deepOrange, brown, gray, blueGray

-}

import Color exposing (Color, rgb255)
import List.Nonempty as Nonempty


{-| TBD
-}
red : Nonempty.Nonempty Color
red =
    Nonempty.Nonempty (rgb 255 235 238)
        [ rgb 255 205 210
        , rgb 239 154 154
        , rgb 229 115 115
        , rgb 239 83 80
        , rgb 244 67 54
        , rgb 229 57 53
        , rgb 211 47 47
        , rgb 198 40 40
        , rgb 183 28 28
        , rgb 255 138 128
        , rgb 255 82 82
        , rgb 255 23 68
        , rgb 213 0 0
        ]


{-| TBD
-}
pink : Nonempty.Nonempty Color
pink =
    Nonempty.Nonempty (rgb 252 228 236)
        [ rgb 248 187 208
        , rgb 244 143 177
        , rgb 240 98 146
        , rgb 236 64 122
        , rgb 233 30 99
        , rgb 216 27 96
        , rgb 194 24 91
        , rgb 173 20 87
        , rgb 136 14 79
        , rgb 255 128 171
        , rgb 255 64 129
        , rgb 245 0 87
        , rgb 197 17 98
        ]


{-| TBD
-}
purple : Nonempty.Nonempty Color
purple =
    Nonempty.Nonempty (rgb 243 229 245)
        [ rgb 225 190 231
        , rgb 206 147 216
        , rgb 186 104 200
        , rgb 171 71 188
        , rgb 156 39 176
        , rgb 142 36 170
        , rgb 123 31 162
        , rgb 106 27 154
        , rgb 74 20 140
        , rgb 234 128 252
        , rgb 224 64 251
        , rgb 213 0 249
        , rgb 170 0 255
        ]


{-| TBD
-}
deepPurple : Nonempty.Nonempty Color
deepPurple =
    Nonempty.Nonempty (rgb 237 231 246)
        [ rgb 209 196 233
        , rgb 179 157 219
        , rgb 149 117 205
        , rgb 126 87 194
        , rgb 103 58 183
        , rgb 94 53 177
        , rgb 81 45 168
        , rgb 69 39 160
        , rgb 49 27 146
        , rgb 179 136 255
        , rgb 124 77 255
        , rgb 101 31 255
        , rgb 98 0 234
        ]


{-| TBD
-}
indigo : Nonempty.Nonempty Color
indigo =
    Nonempty.Nonempty (rgb 232 234 246)
        [ rgb 197 202 233
        , rgb 159 168 218
        , rgb 121 134 203
        , rgb 92 107 192
        , rgb 63 81 181
        , rgb 57 73 171
        , rgb 48 63 159
        , rgb 40 53 147
        , rgb 26 35 126
        , rgb 140 158 255
        , rgb 83 109 254
        , rgb 61 90 254
        , rgb 48 79 254
        ]


{-| TBD
-}
blue : Nonempty.Nonempty Color
blue =
    Nonempty.Nonempty (rgb 227 242 253)
        [ rgb 187 222 251
        , rgb 144 202 249
        , rgb 100 181 246
        , rgb 66 165 245
        , rgb 33 150 243
        , rgb 30 136 229
        , rgb 25 118 210
        , rgb 21 101 192
        , rgb 13 71 161
        , rgb 130 177 255
        , rgb 68 138 255
        , rgb 41 121 255
        , rgb 41 98 255
        ]


{-| TBD
-}
lightBlue : Nonempty.Nonempty Color
lightBlue =
    Nonempty.Nonempty (rgb 225 245 254)
        [ rgb 179 229 252
        , rgb 129 212 250
        , rgb 79 195 247
        , rgb 41 182 246
        , rgb 3 169 244
        , rgb 3 155 229
        , rgb 2 136 209
        , rgb 2 119 189
        , rgb 1 87 155
        , rgb 128 216 255
        , rgb 64 196 255
        , rgb 0 176 255
        , rgb 0 145 234
        ]


{-| TBD
-}
cyan : Nonempty.Nonempty Color
cyan =
    Nonempty.Nonempty (rgb 224 247 250)
        [ rgb 178 235 242
        , rgb 128 222 234
        , rgb 77 208 225
        , rgb 38 198 218
        , rgb 0 188 212
        , rgb 0 172 193
        , rgb 0 151 167
        , rgb 0 131 143
        , rgb 0 96 100
        , rgb 132 255 255
        , rgb 24 255 255
        , rgb 0 229 255
        , rgb 0 184 212
        ]


{-| TBD
-}
teal : Nonempty.Nonempty Color
teal =
    Nonempty.Nonempty (rgb 224 242 241)
        [ rgb 178 223 219
        , rgb 128 203 196
        , rgb 77 182 172
        , rgb 38 166 154
        , rgb 0 150 136
        , rgb 0 137 123
        , rgb 0 121 107
        , rgb 0 105 92
        , rgb 0 77 64
        , rgb 167 255 235
        , rgb 100 255 218
        , rgb 29 233 182
        , rgb 0 191 165
        ]


{-| TBD
-}
green : Nonempty.Nonempty Color
green =
    Nonempty.Nonempty (rgb 232 245 233)
        [ rgb 200 230 201
        , rgb 165 214 167
        , rgb 129 199 132
        , rgb 102 187 106
        , rgb 76 175 80
        , rgb 67 160 71
        , rgb 56 142 60
        , rgb 46 125 50
        , rgb 27 94 32
        , rgb 185 246 202
        , rgb 105 240 174
        , rgb 0 230 118
        , rgb 0 200 83
        ]


{-| TBD
-}
lightGreen : Nonempty.Nonempty Color
lightGreen =
    Nonempty.Nonempty (rgb 241 248 233)
        [ rgb 220 237 200
        , rgb 197 225 165
        , rgb 174 213 129
        , rgb 156 204 101
        , rgb 139 195 74
        , rgb 124 179 66
        , rgb 104 159 56
        , rgb 85 139 47
        , rgb 51 105 30
        , rgb 204 255 144
        , rgb 178 255 89
        , rgb 118 255 3
        , rgb 100 221 23
        ]


{-| TBD
-}
lime : Nonempty.Nonempty Color
lime =
    Nonempty.Nonempty (rgb 249 251 231)
        [ rgb 240 244 195
        , rgb 230 238 156
        , rgb 220 231 117
        , rgb 212 225 87
        , rgb 205 220 57
        , rgb 192 202 51
        , rgb 175 180 43
        , rgb 158 157 36
        , rgb 130 119 23
        , rgb 244 255 129
        , rgb 238 255 65
        , rgb 198 255 0
        , rgb 174 234 0
        ]


{-| TBD
-}
yellow : Nonempty.Nonempty Color
yellow =
    Nonempty.Nonempty (rgb 255 253 231)
        [ rgb 255 249 196
        , rgb 255 245 157
        , rgb 255 241 118
        , rgb 255 238 88
        , rgb 255 235 59
        , rgb 253 216 53
        , rgb 251 192 45
        , rgb 249 168 37
        , rgb 245 127 23
        , rgb 255 255 141
        , rgb 255 255 0
        , rgb 255 234 0
        , rgb 255 214 0
        ]


{-| TBD
-}
amber : Nonempty.Nonempty Color
amber =
    Nonempty.Nonempty (rgb 255 248 225)
        [ rgb 255 236 179
        , rgb 255 224 130
        , rgb 255 213 79
        , rgb 255 202 40
        , rgb 255 193 7
        , rgb 255 179 0
        , rgb 255 160 0
        , rgb 255 143 0
        , rgb 255 143 0
        , rgb 255 229 127
        , rgb 255 215 64
        , rgb 255 196 0
        , rgb 255 171 0
        ]


{-| TBD
-}
orange : Nonempty.Nonempty Color
orange =
    Nonempty.Nonempty (rgb 255 243 224)
        [ rgb 255 224 178
        , rgb 255 204 128
        , rgb 255 183 77
        , rgb 255 167 38
        , rgb 255 152 0
        , rgb 251 140 0
        , rgb 245 124 0
        , rgb 239 108 0
        , rgb 230 81 0
        , rgb 255 209 128
        , rgb 255 171 64
        , rgb 255 145 0
        , rgb 255 109 0
        ]


{-| TBD
-}
deepOrange : Nonempty.Nonempty Color
deepOrange =
    Nonempty.Nonempty (rgb 251 233 231)
        [ rgb 255 204 188
        , rgb 255 171 145
        , rgb 255 138 101
        , rgb 255 112 67
        , rgb 255 87 34
        , rgb 244 81 30
        , rgb 230 74 25
        , rgb 216 67 21
        , rgb 191 54 12
        , rgb 255 158 128
        , rgb 255 110 64
        , rgb 255 61 0
        , rgb 221 44 0
        ]


{-| TBD
-}
brown : Nonempty.Nonempty Color
brown =
    Nonempty.Nonempty (rgb 239 235 233)
        [ rgb 215 204 200
        , rgb 188 170 164
        , rgb 161 136 127
        , rgb 141 110 99
        , rgb 121 85 72
        , rgb 109 76 65
        , rgb 93 64 55
        , rgb 78 52 46
        , rgb 62 39 35
        ]


{-| TBD
-}
gray : Nonempty.Nonempty Color
gray =
    Nonempty.Nonempty (rgb 250 250 250)
        [ rgb 245 245 245
        , rgb 238 238 238
        , rgb 224 224 224
        , rgb 189 189 189
        , rgb 158 158 158
        , rgb 117 117 117
        , rgb 97 97 97
        , rgb 66 66 66
        , rgb 33 33 33
        ]


{-| TBD
-}
blueGray : Nonempty.Nonempty Color
blueGray =
    Nonempty.Nonempty (rgb 236 239 241)
        [ rgb 207 216 220
        , rgb 176 190 197
        , rgb 144 164 174
        , rgb 120 144 156
        , rgb 96 125 139
        , rgb 84 110 122
        , rgb 69 90 100
        , rgb 55 71 79
        , rgb 38 50 56
        ]