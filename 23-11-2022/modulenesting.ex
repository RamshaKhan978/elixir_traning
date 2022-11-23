defmodule Alias do
  def basic(name) do
    "Hi, #{name}"
  end

  defmodule  Example  do
    alias Saying, as: New_module
      def greetins(name) do
        New_module.basic(name)
      end

  end
end

defmodule Import do
  def sum(a,b) do
    a + b
  end
  end
   defmodule Nested do
     import Import.sum(a,b)
     def my_function(args) do
      sum(a,b)
     end
end
alias Alias.Example, as: Call_Alias
IO.puts(Call_Alias.greetins("Ramsha"))
