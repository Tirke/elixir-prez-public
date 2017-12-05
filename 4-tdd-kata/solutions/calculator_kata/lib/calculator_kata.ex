defmodule CalculatorKata do
  @moduledoc """
  Documentation for CalculatorKata.
  """

  def calculate("") do
    0
  end

  def calculate(input) do
    get_tokens(input)
    |> Enum.map(&(String.to_integer(&1)))
    |> check_for_negatives
    |> Enum.sum
  end

  defp check_for_negatives(numbers) do
    negatives = Enum.filter(numbers, fn x -> x < 0 end)
    if length(negatives) > 0 do
      raise NoNegativeNumber, Enum.join(negatives, ", ")
    end
    numbers
  end

  defp get_tokens("//" <> rest) do
    [delim, string] = String.split(rest, "\n")
    String.split(string, delim)
  end

  defp get_tokens(string) do
    String.split(string, [",", "\n"])
  end
end
