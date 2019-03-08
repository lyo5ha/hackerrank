defmodule Solution do

  def input do
      IO.stream(:stdio, :line)
      |> Enum.to_list
      |> Enum.map(&String.trim/1)
      |> Enum.map(&String.to_integer/1)
    end

  def main(coll) do
    # coll = Enum.map((String.split(IO.read(:string), "\n")), &(String.to_integer(&1)))
      # list
      # |> String.split("\n")
      # |> Enum.map(&(String.to_integer(&1)))
      # |> work(String.to_integer(String.trim(mult, "\n")))
    work(coll)
  end

  def work([mult|list]) do
    Enum.each(list, fn val -> collector(val, mult)end)
  end

  def collector(val, mult) do
    for _ <- 1..mult do
      IO.puts val
    end
  end
end

  # Solution.input |> Solution.main

