defmodule People.PersonTest do
  use ExUnit.Case
  alias People.Person

  test "full_name/1 with mononyms" do
    teller = %Person{
      first_name: "Teller"
    }

    assert teller |> Person.full_name() === "Teller"

    madonna = %Person{
      first_name: "Madonna"
    }

    assert madonna |> Person.full_name() === "Madonna"
  end
end
