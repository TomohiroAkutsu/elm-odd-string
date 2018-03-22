module Tests exposing (..)

import Test exposing (..)
import TestExp exposing (..)
import Main exposing (oddString)


--  target modules


all : Test
all =
    describe "Main Test"
    [ "oddString Test1"
        => oddString "abcdef"
        === "bdf"
    , "oddString Test2"
        => oddString ""
        === ""
    ]
