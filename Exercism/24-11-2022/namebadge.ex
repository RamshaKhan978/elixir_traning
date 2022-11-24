defmodule NameBadge do
  def print(id, name, department) do
     deprt = if department, do: String.upcase(department), else: "OWNER"
     if is_nil(id)  do
      "#{name} - #{deprt}"
      else
        "[#{id}] - #{name} - #{deprt}"
      end
  end

end
