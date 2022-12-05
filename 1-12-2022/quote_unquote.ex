differ = quote do
  "this one is " <> "quoted!"
 end
  #{:<>, [context: Elixir, imports: [{2, Kernel}]], ["this one is ", "quoted!"]}
   Code.eval_quoted(differ)
  #{"this one is quoted!", []}


  list = [1, 2, 3, 4]
  differ = quote do list |> Enum.map( fn x -> x*x end) end
  Code.eval_quoted(differ)
  # ** (CompileError) nofile:1: undefined function list/0 (there is no such import)


  differ = quote do unquote( list) |> Enum.map( fn x -> x*x end) end
  Code.eval_quoted(differ)
  # {[1, 4, 9, 16], []}

  #https://medium.com/ducktypd/elixir-quote-unquote-e657f6c573d4
