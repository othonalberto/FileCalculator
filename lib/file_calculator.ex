defmodule FileCalculator do

  def execute(file_name) do
    result = file_name
    |> File.read!()
    |> String.split(" ")
    |> Executor.calculate()

    File.write(Helper.build_filename(file_name), Float.to_string(result))

    result
  end

end
