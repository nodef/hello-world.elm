module Main exposing (
    eq, imply,
    eqv, imp,
    and, and0, and1, and2
  )
{-|
A "Hello, World!" is an introductory computer program.\
📦 [Package](https://package.elm-lang.org/packages/elmw/hello-world/latest/),
📘 [Wiki](https://github.com/elmw/hello-world/wiki).
@docs eq, imply
@docs eqv, imp
@docs and, and0, and1, and2
-}

-- import Maybe exposing (withDefault)
-- import List exposing (length)




-- EQ, IMPLY (FIXED)
{-|
Check if antecedent ⇔ consequent (a ⇔ b).
[📘](https://github.com/elmw/hello-world/wiki/eq)
    -- eq a b
    -- a: antecedent
    -- b: consequent
    eq True True   == True
    eq False False == True
    eq True False  == False
    eq False True  == False
-}
eq : Bool -> Bool -> Bool
eq a b =
  a == b


{-|
Check if antecedent ⇒ consequent (a ⇒ b).
[📘](https://github.com/elmw/hello-world/wiki/imply)
    -- imply a b
    -- a: antecedent
    -- b: consequent
    imply True True   == True
    imply False True  == True
    imply False False == True
    imply True False  == False
-}
imply : Bool -> Bool -> Bool
imply a b =
  not a || b




-- EQV, IMP (SHORTCUTS)
{-|
Check if antecedent ⇔ consequent (a ⇔ b).
[📘](https://github.com/elmw/hello-world/wiki/eqv)
    -- eqv a b
    -- a: antecedent
    -- b: consequent
    eqv True True   == True
    eqv False False == True
    eqv True False  == False
    eqv False True  == False
-}
eqv : Bool -> Bool -> Bool
eqv = eq


{-|
Check if antecedent ⇒ consequent (a ⇒ b).
[📘](https://github.com/elmw/hello-world/wiki/imp)
    -- imp a b
    -- a: antecedent
    -- b: consequent
    imp True True   == True
    imp False True  == True
    imp False False == True
    imp True False  == False
-}
imp : Bool -> Bool -> Bool
imp = imply




-- AND (VARIABLE)
{-|
Check if all values are true.
[📘](https://github.com/elmw/hello-world/wiki/and)
    -- and[n] a b ...
    -- a: 1st boolean
    -- b: 2nd boolean
    and True True             == True
    and True False            == False
    and4 True True True True  == True
    and4 True False True True == False
-}
and : Bool -> Bool -> Bool
and = and2


{-|
Check if all values are true.
[📘](https://github.com/elmw/hello-world/wiki/and)
    -- and[n] a b ...
    -- a: 1st boolean
    -- b: 2nd boolean
    and True True             == True
    and True False            == False
    and4 True True True True  == True
    and4 True False True True == False
-}
and0 : Bool
and0 =
  True


{-|
Check if all values are true.
[📘](https://github.com/elmw/hello-world/wiki/and)
    -- and[n] a b ...
    -- a: 1st boolean
    -- b: 2nd boolean
    and True True             == True
    and True False            == False
    and4 True True True True  == True
    and4 True False True True == False
-}
and1 : Bool -> Bool
and1 a =
  a


{-|
Check if all values are true.
[📘](https://github.com/elmw/hello-world/wiki/and)
    -- and[n] a b ...
    -- a: 1st boolean
    -- b: 2nd boolean
    and True True             == True
    and True False            == False
    and4 True True True True  == True
    and4 True False True True == False
-}
and2 : Bool -> Bool -> Bool
and2 a b =
  a && b
