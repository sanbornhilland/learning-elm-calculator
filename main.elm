import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main =
  Html.beginnerProgram { model = model, view = view, update = update }

type Message = Increase Int | Clear

type alias Model =
  { currentValue : String }

model : Model
model =
  { currentValue = "0" }

update : Message -> Model -> Model
update message model =
  case message of
    Increase value ->
      { model | currentValue = model.currentValue ++ (toString value) }

    Clear ->
      { model | currentValue = "0" }

numButton : Int -> Html Message
numButton number =
  button [onClick (Increase number)] [text (toString number)]

view : Model -> Html Message
view model =
  div []
    [ div [] [text (toString model.currentValue)]
    , numButton 0
    , numButton 1
    , numButton 2
    , numButton 3
    , numButton 4
    , numButton 5
    , numButton 6
    , numButton 7
    , numButton 8
    , numButton 9
    , button [onClick Clear] [text "Clear"]
    ]
