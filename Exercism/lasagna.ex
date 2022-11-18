defmodule Lasagna do
  # define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven() do
    40
  end
  # define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(already_spent_time) do
    expected_minutes_in_oven() - already_spent_time
  end
  #  define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(nb_layer) do
    nb_layer * 2
  end
  # define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(nb_layer, already_spent_time) do
    preparation_time_in_minutes(nb_layer) + already_spent_time
  end
  # define the 'alarm/0' function
  def alarm() do
    "Ding!"
  end
end
