module Example exposing (..)

import Expect exposing (Expectation, equal)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)
import Main exposing (..)




-- EQ, IMPLY (FIXED)
eqTests : Test
eqTests =
  describe "eq a b" [
    test "2.3" <|
      \_ -> eq True True |> equal True,
    test "2.0" <|
      \_ -> eq False False |> equal True,
    test "2.2" <|
      \_ -> eq True False |> equal False,
    test "2.1" <|
      \_ -> eq False True |> equal False
  ]


implyTests : Test
implyTests =
  describe "imply a b" [
    test "2.3" <|
      \_ -> imply True True |> equal True,
    test "2.1" <|
      \_ -> imply False True |> equal True,
    test "2.0" <|
      \_ -> imply False False |> equal True,
    test "2.2" <|
      \_ -> imply True False |> equal False
  ]




-- EQV, IMP (SHORTCUTS)
eqvTests : Test
eqvTests =
  describe "eqv a b" [
    test "2.3" <|
      \_ -> eqv True True |> equal True,
    test "2.0" <|
      \_ -> eqv False False |> equal True,
    test "2.2" <|
      \_ -> eqv True False |> equal False,
    test "2.1" <|
      \_ -> eqv False True |> equal False
  ]


impTests : Test
impTests =
  describe "imp a b" [
    test "2.3" <|
      \_ -> imp True True |> equal True,
    test "2.1" <|
      \_ -> imp False True |> equal True,
    test "2.0" <|
      \_ -> imp False False |> equal True,
    test "2.2" <|
      \_ -> imp True False |> equal False
  ]




-- AND (VARIABLE)
andTests : Test
andTests =
  describe "and[n] a b ..." [
    test "0.0" <|
      \_ -> and0 |> equal True,
    test "1.1" <|
      \_ -> and1 True |> equal True,
    test "1.0" <|
      \_ -> and1 False |> equal False,
    test "2.3" <|
      \_ -> and2 True True |> equal True,
    test "2.2" <|
      \_ -> and2 True False |> equal False,
    test "2.1" <|
      \_ -> and2 False True |> equal False,
    test "2.0" <|
      \_ -> and2 False False |> equal False
  ]
