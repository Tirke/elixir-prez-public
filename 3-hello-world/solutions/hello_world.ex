defmodule Hello_world do
  @moduledoc false

  # Ecrivez une fonction prenant en paramètre un nom.
  # L'appel hello("Paul") écrira "Salut Paul" sur le standard output

  def hello(name) do
    IO.puts("Salut #{name}")
  end

end
