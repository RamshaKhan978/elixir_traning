defmodule Person do
  defstruct [
    first_name: nil,
    last_name: nil,
    birthday: nil,
    location: "away"
  ]
  def full_name(%Person{first_name: first_name, last_name: last_name} = person) do
    "#{first_name} #{last_name}"
  end

  def age(%Person{birthday: birthday} = person) do
    days = Date.diff(Date.utc_today, birthday)
    days / 365.25
  end
  def home(%Person{} = person) do
    %{person | location: "home"}
  end

  def away(%Person{} = person) do
    %{person | location: "away"}
  end
  def toggle_location(%Person{location: "away"} = person) do
    %{person | location: "home"}
  end

  def toggle_location(%Person{location: "home"} = person) do
    %{person | location: "away"}
  end
  defp set_location(%Person{} = person, location) do
    IO.puts "#{person |> full_name}'s location is now #{location}"
    %{person | location: location}
  end
end
