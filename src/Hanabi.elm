module Hanabi exposing (main)

{-| Main entry for the Hanabi client
@docs main
-}

import Html
import Hanabi.Card


aCard : Hanabi.Card.Card
aCard = Hanabi.Card.card 1 Hanabi.Card.Red

{-| function to show the client UI
-}
main : Html.Html msg
main = Hanabi.Card.view aCard
