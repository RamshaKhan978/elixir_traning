defmodule People.PersonTest do
  use ExUnit.Case
  alias People.Person

  test "full_name" do
    teller = %Person{
      first_name: "Ryan",
      last_name: "Bigg"
    }

    assert teller |> Person.full_name() === "Ryan Bigg"
  end

  test "age" do
    age =%Person{
      birthday: ~D[1987-12-04]
    }
    assert age |> Person.age() === 34.98425735797399

  end

  test "toggle_location" do
    location = %Person{
      location: "away"
    }
    assert location |> Person.toggle_location() === %Person{location: "home"}
  end

end
