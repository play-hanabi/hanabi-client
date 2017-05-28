module Hanabi exposing (main)

{-| Main entry for the Hanabi client
@docs main
-}

import Html
import Hanabi.Card exposing (card)
import Hanabi.Hand
import Hanabi.Pile
import Hanabi.Game


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


aGame : Hanabi.Game.Game
aGame =
    {
      ownHand = aHand
    , otherHands = [ [ card 1 Hanabi.Card.Red, card 2 Hanabi.Card.Red ] ]
    , played  = [ card 1 Hanabi.Card.Blue, card 2 Hanabi.Card.Blue ]
    , discard = aPile
    }

{-| function to show the client UI
-}
main : Html.Html msg
main = Hanabi.Game.view aGame
