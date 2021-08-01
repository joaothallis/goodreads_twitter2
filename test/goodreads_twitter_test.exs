defmodule GoodreadsTwitterTest do
  use ExUnit.Case
  doctest GoodreadsTwitter

  test "greets the world" do
    assert GoodreadsTwitter.hello() == :world
  end
end
