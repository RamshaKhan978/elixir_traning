defmodule People.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "hello/:name", to: People.Hello
  get "goodbye/:name", to: People.Goodbye
  get  "age/:birthdate", to: People.Age

  match _ do
    send_resp(conn, 404, "there's nothing here")
  end
end
