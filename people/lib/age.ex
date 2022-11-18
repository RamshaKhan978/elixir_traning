defmodule People.Age do
  import Plug.Conn

  def init(options), do: options

  def call(%Plug.Conn{params: %{"birthdate" => birthdate}} = conn, _opts) do

    age = %People.Person{birthday: Date.from_iso8601!(birthdate)} |> People.Person.age

    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Your Age is #{age}")
  end
end
