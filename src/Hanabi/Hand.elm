module Hanabi.Hand exposing (Hand, view)

import Html
import Hanabi.Card


type alias Hand = List Hanabi.Card.Card


view hand =
    Html.div
        []
        (List.map Hanabi.Card.view hand)
