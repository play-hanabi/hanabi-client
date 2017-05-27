module Hanabi.Pile exposing (Pile, view)

import Html
import Hanabi.Card


type alias Pile = List Hanabi.Card.Card


view pile =
    Html.div
        []
        (List.map Hanabi.Card.view pile)
