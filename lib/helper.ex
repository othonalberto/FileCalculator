defmodule Helper do

  def build_filename(base_file_name) do
    "result_"
      <> get_stringify_date()
      <> "_"
      <> base_file_name
  end

  def get_stringify_date() do
    DateTime.utc_now()
    |> DateTime.to_string()
    |> String.trim()
  end

end
