defmodule Solution do

  def input do
    IO.stream(:stdio, :line)
    |> Enum.to_list
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
    |> List.first
  end

  def main(count) do
    main([], count)
  end

  def main(list, 0) do
    IO.inspect(list, limit: :infinity)
  end

  def main(list, count) do
    list = [1 | list]
    main(list, count - 1)
  end
end

Solution.input |> Solution.main
