defmodule ProductAppTest do
  use ExUnit.Case
  doctest ProductApp

  test "greets the world" do
    assert ProductApp.hello() == :world
  end
end
