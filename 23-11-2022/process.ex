defmodule  Parallel do
  def listen do
    receive do
      {:ok, "hello"} -> IO.puts("World")
    end


  end

end
