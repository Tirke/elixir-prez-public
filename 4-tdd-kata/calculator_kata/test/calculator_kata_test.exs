defmodule CalculatorKataTest do
  use ExUnit.Case
  doctest CalculatorKata

  test "return 0 on empty string" do
    assert CalculatorKata.calculate("") == 0
  end
end
