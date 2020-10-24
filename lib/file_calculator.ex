defmodule FileCalculator do

  def execute(file_name) do
    file_name
      |> File.read!()
      |> String.split(" ")
      |> Executor.calculate()
  end

end
