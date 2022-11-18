defmodule PeopleTest do
  use ExUnit.Case
  doctest People

  test "greets the world" do
    assert People.hello() == :world
  end
end
