defmodule Script do
  def write_into_file do
    File.write("./generated.ex", "IO.puts \"This file was generated from Elixir\"")
  end

  def read_file do

    File.read!("./generated.ex") |> IO.inspect

  end
end
Script.write_into_file()
Script.read_file()
