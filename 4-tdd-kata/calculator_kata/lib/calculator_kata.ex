defmodule CalculatorKata do
  @moduledoc """
  Documentation for CalculatorKata.

  iex > CalculatorKata.calculate("1,2")
  iex > 3
  """

  def calculate("") do
    0
  end
  
  def calculate(input) do
      get_tokens(input)    
      |> Enum.map(&String.to_integer/1)
      |> check_negatives
      |> Enum.sum
  end

  def check_negatives(numbers) do
    negatives = Enum.filter(numbers, fn num -> num < 0 end)

    if length(negatives) > 0 do
      raise(NoNegativeNumber, Enum.join(negatives, ", "))
    end

    numbers
  end

  def get_tokens("//" <> rest) do
    [delimiter, new_input] = String.split(rest, "\n")
    String.split(new_input, delimiter)
  end

  def get_tokens(input) do
    String.split(input, [",", "\n"])
  end
end
