module Main exposing (..)

import Html exposing (Html, Attribute, beginnerProgram, text, div, input)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String

main =
    beginnerProgram { model = "", view = view, update = update }


---- UPDATE ----

type Msg
    = NewContent String

update (NewContent content) oldContent =
    content


---- VIEW ----

view content =
    let
        newContent =
            content
    in
    div []
        [ input [ placeholder "display odd text", onInput NewContent, myStyle ] []
        , div [ myStyle ] [text <| oddString content ]
        ]

oddString : String -> String
oddString str =
    str
        |> String.toList
        |> List.indexedMap (,)
        |> List.filter(\(i, _) -> i % 2 == 1)
        |> List.map(\(_, c) -> c)
        |> String.fromList

myStyle =
    style
        [ ( "width", "100%" )
        , ( "height", "40px" )
        , ( "padding", "10px 0" )
        , ( "font-size", "2em" )
        , ( "text-align", "center" )
        ]