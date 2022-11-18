defmodule People.Hello do
  import Plug.Conn

  def init(options), do: options

  def call(%Plug.Conn{params: %{"name" => name}} = conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello #{name}!")
  end
end
