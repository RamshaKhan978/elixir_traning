defmodule Recursion do
  def print_multiple_times(msg, n) when n > 0 do
    IO.puts(msg)
    print_multiple_times(msg, n - 1)
  end

  def print_multiple_times(_msg, 0) do
    :ok
  end
  def sum_list([head | tail], accumulator) do
    IO.puts(accumulator)
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end

  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]) do
    []
  end
end
IO.puts(Recursion.sum_list([1, 2, 3], 0))
IO.puts(Recursion.double_each([1, 2, 3]))
