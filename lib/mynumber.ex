defmodule Mynumber do

  @doc """
  Return true if value is a valid corporate number.
  """
  def corporate_number?(num) do
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
        acc = rem(acc + (elem(x, 0) * q), 9) end)

      checkdegit == (9 - remainder)
    end
  end

  @doc """
  Return true if value is a valid indivisual number.
  """
  def indivisual_number?(num) do
    if String.length(num) !== 12 do
      false
    else
      list = num
        |> String.codepoints
        |> Enum.map(fn(x) -> String.to_integer(x) end)
      checkdegit = List.last(list)
      list = List.delete_at(list, -1)
      list = Enum.with_index(list)
      remainder = Enum.reduce(list, 0, fn(x, acc) ->
        idx = 11 - elem(x, 1)
        q = if idx <= 6 do idx + 1 else idx - 5 end
        acc = rem(acc + (elem(x, 0) * q), 11) end)

      case remainder do
        0 -> (checkdegit == 0)
        1 -> (checkdegit == 0)
        _ -> (checkdegit == (11 - remainder))
      end
    end
  end

  @doc """
  Return true if value is a valid indivisual number or a valid corporate number.
  """
  def valid?(num) do
    corporate_number?(num) || indivisual_number?(num)
  end
end
