module Hanabi.Card exposing (Card, card, Color, Color(..), view)


import Html
import Html.Attributes as Attribute


type alias Card = {
        value: Value,
        color: Color
    }


card : Value -> Color -> Card
card value color =
    {
      value = value
    , color = color
    }


type Color =
    White
        | Red
        | Yellow
        | Green
        | Blue
        | Rainbow


type alias Value = Int


view : Card -> Html.Html msg
view card =
    Html.div
        [
         Attribute.classList
             [
               ("card", True)
             , (toString card.color, True)
             ]
        ]
        [
         Html.span [] [ Html.text (toString card.value) ]
        ]
