defmodule Solution do

  def input do
    IO.stream(:stdio, :line)
    |> Enum.to_list
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
  end

  def main(list) do
    main(list, 0)
  end

  def main([], _count) do
    :ok
  end

  def main(list, count) do
    [head|tail] = list
    if rem(count, 2) == 1 do
      IO.puts head
    end
    main(tail, count + 1)
  end

end

Solution.input |> Solution.main
