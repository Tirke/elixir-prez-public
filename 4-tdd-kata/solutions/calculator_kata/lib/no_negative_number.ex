defmodule NoNegativeNumber do
  @moduledoc false
  defexception [:message]

  def exception(negatives) do
    msg = "No negative numbers allowed: #{negatives}"
    %NoNegativeNumber{message: msg}
  end
end
