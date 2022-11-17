defmodule Person do
  defstruct[
    first_name: nil,
    last_name: nil,
    birthday: nil,
    location: "home"
  ]
  def home ( %Person {} = person ) do
    %{person | locaton: "home"}
  end
    def away ( %Person {} = person ) do
      %{person | locaton: "away"}
    end
      end
