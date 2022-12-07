defmodule KV do
  use Application

  @impl true
  def start(_type, _args) do
   # it can be useful when debugging or introspecting the system.
    KV.Supervisor.start_link(name: KV.Supervisor)
  end
end
