defmodule Person do
  defstruct [
    first_name: nil,
    last_name: nil,
    birthday: nil,
    location: "home"
  ]
  def full_name(%Person{first_name: first_name,
  last_name: last_name} = person) do
    "#{first_name} #{last_name}"
  end

  def age(%Person{birthday: birthday} = person) do
    days = Date.diff(Date.utc_today, birthday)
    days / 365.25
  end


  def home(%Person{} = person) do
    %{person | location: "home"}
  end
  def home(%Person{} = person) do
    %{person | location: "home"}
  end

  def away(%Person{} = person) do
    %{person | location: "away"}
  end
      end
