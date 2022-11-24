try do
    Enum.each(-50..50, fn x ->
       if rem(x, 13) == 0, do: throw(x)
     end)
    "Got nothing"
   catch
     x -> "Got #{x}"
  end
