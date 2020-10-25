defmodule Helper do

  @filePrefix "result_"
  @separator "_"

  def build_filename(base_file_name) do
    @filePrefix <>
      get_stringify_date() <>
      @separator <>
      base_file_name
  end

  def get_stringify_date() do
    DateTime.utc_now()
    |> DateTime.to_string()
    |> String.trim()
  end

  def get_stringify_result(result) do
    Enum.reduce(result, "", fn number, str_result ->
      str_result <> Float.to_string(number) <> "\n"
    end)
  end
end
