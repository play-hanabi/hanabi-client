module Hanabi.Game exposing (Game, view)


import Html
import List
import Hanabi.Hand exposing (Hand)
import Hanabi.Pile exposing (Pile)


type alias Game =
    {
      ownHand : Hand
    , otherHands : List Hand
    , played : Pile
    , discard : Pile
    }


view : Game -> Html.Html msg
view game =
    Html.div []
        (List.concat
        [
         [ Hanabi.Hand.view game.ownHand ]
        , (List.map Hanabi.Hand.view game.otherHands)
        , [
            Hanabi.Pile.view game.played
          , Hanabi.Pile.view game.discard
          ]
        ])
