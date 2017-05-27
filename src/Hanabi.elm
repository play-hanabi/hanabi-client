module Hanabi exposing (main)

{-| Main entry for the Hanabi client
@docs main
-}

import Html
import Hanabi.Card exposing (card)
import Hanabi.Hand


aHand : Hanabi.Hand.Hand
aHand =
    [
      card 1 Hanabi.Card.White
    , card 2 Hanabi.Card.Red
    , card 3 Hanabi.Card.Yellow
    , card 4 Hanabi.Card.Green
    , card 5 Hanabi.Card.Blue
    ]

{-| function to show the client UI
-}
main : Html.Html msg
main = Hanabi.Hand.view aHand
