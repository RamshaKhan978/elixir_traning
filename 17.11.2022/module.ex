defmodule Person do
  person = %{
    first_name: "Izzy",
    last_name: "Bell",
    birthday: ~D[1987-12-04],

  }
  def full_name(person) do
    "#{person.first_name} #{person.last_name}"
  end

  def age(person) do
    days = Date.diff(Date.utc_today, person.birthday)
    days / 365.25
  end

end
