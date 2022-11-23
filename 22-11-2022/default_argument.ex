defmodule Concat do


  def join(a, b, _spe) do
    IO.puts "***First join"
    a <> b
  end

  def join(a, b, sep \\ " ") do
    IO.puts "***Second join"
    a <> sep <> b
  end
end


IO.puts Concat.join("Hello", "world")      #=> Hello world
IO.puts Concat.join("Hello", "world","_")
