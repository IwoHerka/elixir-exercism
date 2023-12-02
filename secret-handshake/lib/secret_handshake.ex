defmodule SecretHandshake do

  @action_sequence [
    "wink",
    "double blink",
    "close your eyes",
    "jump"
  ]

  def commands(code) do
    actions =
      code
      |> Integer.to_string(2)
      |> String.to_charlist()
      |> Enum.reverse()
      |> Enum.zip(@action_sequence)
      |> Enum.map(fn {code, action} ->
        if code == ?1 do
          action
        end
      end)
      |> Enum.filter(& &1)

    actions =
      if Bitwise.band(0b10000, code) > 1 do
        Enum.reverse(actions)
      else
        actions
      end
  end
end
