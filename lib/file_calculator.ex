defmodule FileCalculator do

  def execute(file_name) do
    result = file_name
    |> File.read!()
    |> String.split("\n")
    |> Executor.calculate()

    File.write(Helper.build_filename(file_name), Helper.get_stringify_result(result))
  end

end
