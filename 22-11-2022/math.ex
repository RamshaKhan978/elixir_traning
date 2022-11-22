defmodule Math do
  def sum(a, b) do
  do_sum(a,b)
  end

  defp do_sum(a,b) do
    a + b
  end
  def zero?(0) do
    true
  end

  def zero?(x) when is_integer(x)   do
    false
  end
  def zero?(x) when x !== 0   do
    false
end
end
IO.puts(Math.sum(2,3))  # => 5
 # IO.puts(Math.do_sum(3,5))  #=> ** (UndefinedFunctionError) function Math.do_sum/2 is undefined or private
 IO.puts Math.zero?(0)
 IO.puts Math.zero?(1)
 IO.puts Math.zero?(0.0)
 IO.puts Math.zero?([1, 2, 3])
