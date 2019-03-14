defmodule Solution do

  def input do
    IO.stream(:stdio, :line)
    |> Enum.to_list
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
  end

  def main([delimiter | array]) do
    Enum.each(array, fn val -> filter(val, delimiter) end)
  end

  def filter(val, delimiter) do
    if val < delimiter do
      IO.puts val
    end
  end
end

Solution.input |> Solution.main
