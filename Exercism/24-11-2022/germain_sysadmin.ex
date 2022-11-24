defmodule Username do
  def sanitize(username) do
     case username do
      [] -> []
      [h | t] when h >= ?a and h <= ?z or h == ?_ -> [ h | sanitize(t) ]
      [h | t] when h == ?ä -> 'ae' ++ sanitize(t)
      [h | t] when h == ?ö -> 'oe' ++ sanitize(t)
      [h | t] when h == ?ü -> 'ue' ++ sanitize(t)
      [h | t] when h == ?ß -> 'ss' ++ sanitize(t)
      [_ | t] -> sanitize(t)
    end
  end
end
