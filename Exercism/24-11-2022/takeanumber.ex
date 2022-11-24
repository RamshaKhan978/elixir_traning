defmodule TakeANumber do
  def start() do
    spawn(fn -> loop(0) end)
  end
 defp loop(state)do
 receive do
      {:report_state, pid} -> send(pid, state)
                              loop(state)
      {:take_a_number, pid} -> state = state + 1
                              send(pid, state)
                              loop(state)
 :stop -> nil
               _ -> loop(state)
end
end
end
