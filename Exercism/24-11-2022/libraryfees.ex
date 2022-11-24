defmodule LibraryFees do
  def datetime_from_string(string) do
   NaiveDateTime.from_iso8601!(string)
  end
@noon 12
  def before_noon?(datetime) do
  datetime.hour < @noon
  end
  def return_date(checkout_datetime) do
    return_day= if before_noon?(checkout_datetime) do
        28
      else 29
end
      checkout_datetime
       |> NaiveDateTime.to_date()
        |> Date.add(return_day)
  end
  def days_late(planned_return_date, actual_return_datetime) do
    case actual_return_datetime
          |> NaiveDateTime.to_date() |> Date.diff(planned_return_date) do
  late_days when late_days <= 0 -> 0
      late_days -> late_days
end
  end
  def monday?(datetime) do
     Date.day_of_week(datetime) == 1
  end
