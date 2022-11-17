
case File.read("haiku.txt") do
  {:ok, contents} ->
    contents
    |> String.split("\n", trim: true)
    |> Enum.map(&String.reverse/1)
    |> Enum.join("\n")
    |> IO.inspect
  {:error, :enoent} ->
    IO.puts "Could not find haiku.txt"
  {:error, _} ->
    IO.puts "Something unexpected happened, please try again."
end
