file_data = %{name: "haiku.txt"}
case Map.fetch(file_data, :name) do
  {:ok, name} ->
    case File.read(name) do
      {:ok, contents} ->
        contents
        |> String.split("\n", trim: true)
        |> Enum.map(&String.reverse/1)
        |> Enum.join("\n")
        |> IO.inspect
      {:error, :enoent} ->
        IO.puts "Could not find a file called #{name}"
    end
  :error -> "No key called :name in file_data map"
end

with {:ok, name } <- Map.fetch(file_data, :name),
     {:ok, contents} <- File.read(name) do
     contents
     |> String.split("\n", trim: true)
     |> Enum.map(&String.reverse/1)
     |> IO.inspect
else
     :error -> ":name key missing in filedata"
     {:error, :enoent} -> " Couldn't read  file"
end
