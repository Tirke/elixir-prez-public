defmodule CalculatorKataTest do
  use ExUnit.Case
  doctest CalculatorKata

  test "return 0 on empty string" do
    assert CalculatorKata.calculate("") == 0
  end

  test "return a single number" do
    assert CalculatorKata.calculate("2") == 2
  end

  test "return sum of two numbers" do
    assert CalculatorKata.calculate("2,3") == 5
  end

  test "return sum of unknow numbers" do
    assert CalculatorKata.calculate("1,2,3") == 6
  end

  test "can use line feed delimiter" do
    assert CalculatorKata.calculate("1\n3") == 4
  end

  test "can use custom delimiter" do
    assert CalculatorKata.calculate("//;\n3;4") == 7
  end

  test "can use multi char delimiter" do
    assert CalculatorKata.calculate("//;;\n3;;4") == 7
  end

  test "can handle special character" do
    assert CalculatorKata.calculate("//***\n3***4") == 7
  end

  test "throws error on negative numbers" do
    assert_raise NoNegativeNumber, "No negative numbers allowed: -1, -3", fn ->
      CalculatorKata.calculate("-1,2,-3")
    end
  end
end
