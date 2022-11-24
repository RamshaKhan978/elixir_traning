File.write("haiku.txt", "Hello from the other side ")
case File.read("haiku.txt") do
  {:ok, body} -> IO.puts("Success: #{body}")
 {:error, reason} -> IO.puts("Error: #{reason}")
end
