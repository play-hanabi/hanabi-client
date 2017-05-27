module Hanabi exposing (main)

{-| Main entry for the Hanabi client
@docs main
-}

import Html
import Hanabi.Card exposing (card)
import Hanabi.Hand
import Hanabi.Pile


aHand : Hanabi.Hand.Hand
aHand =
    [
      card 1 Hanabi.Card.White
    , card 2 Hanabi.Card.Red
    , card 3 Hanabi.Card.Yellow
    , card 4 Hanabi.Card.Green
    , card 5 Hanabi.Card.Blue
    ]


aPile : Hanabi.Pile.Pile
aPile =
    [
      card 1 Hanabi.Card.White
    , card 1 Hanabi.Card.Red
    , card 1 Hanabi.Card.Yellow
    , card 1 Hanabi.Card.Green
    , card 1 Hanabi.Card.Blue
    ]


{-| function to show the client UI
-}
main : Html.Html msg
main = Html.div []
       [
         Hanabi.Hand.view aHand
       , Hanabi.Pile.view aPile
       ]
