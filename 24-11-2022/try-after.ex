defmodule RunAfter do
  def without_even_trying do
     raise "oops"
    after
       IO.puts "cleaning up!"
     end
   end
   RunAfter.without_even_trying
