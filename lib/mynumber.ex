defmodule Mynumber do

  def corporate_number(num) do
    if String.length(num) !== 13 do
      false
    else
      list = num
        |> String.codepoints
        |> Enum.map(fn(x) -> String.to_integer(x) end)
      checkdegit = List.last(list)
      list = List.delete_at(list, -1)
      list = Enum.with_index(list)
      remainder = Enum.reduce(list, 0, fn(x, acc) ->
         q = if rem(elem(x, 1), 2) == 0 do 1 else 2 end
         acc = rem(acc + (elem(x, 0) * q), 9)
       end)

      checkdegit == (9 - remainder)
    end

  end
end
