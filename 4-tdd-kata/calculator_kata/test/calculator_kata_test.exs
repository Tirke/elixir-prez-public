defmodule CalculatorKataTest do
  use ExUnit.Case
  doctest CalculatorKata

  test "return 0 on empty string" do
    assert CalculatorKata.calculate("") == 0
  end

  test "return the number if only one number in params" do
    assert CalculatorKata.calculate("3") == 3
  end

  test "return the sum of two numbers when there are two numbers in params" do
    assert CalculatorKata.calculate("1,2") == 3
  end

  test "return the sum of multiple numbers when there multiple params" do
    assert CalculatorKata.calculate("1,2,3") == 6
  end

  test "we can use \n as a delimiter" do
    assert CalculatorKata.calculate("1\n3") == 4
  end

  test "we can use a custom delimiter" do
    assert CalculatorKata.calculate("//;\n3;4") == 7
  end

  test "we can use multiple custom delimiter" do
    assert CalculatorKata.calculate("//;;\n3;;4") == 7
  end

  test "we can use reserved custom delimiter" do
    assert CalculatorKata.calculate("//***\n3***4") == 7
  end

  test "throws an error on negative numbers" do
    assert_raise NoNegativeNumber, "No negative numbers allowed: -2, -5", fn ->
      CalculatorKata.calculate("-2,6,-5")
    end
  end
end
