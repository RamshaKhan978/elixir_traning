defmodule MyServer do
  @my_data 14
  def first_data, do: IO.puts(@my_data)
  @my_data 13
  def second_data, do: IO.puts(@my_data)
end
MyServer.first_data
MyServer.second_data
