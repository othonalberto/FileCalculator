defmodule Executor do

  def calculate(operation_list) do
    [head | tail] = operation_list

    params = Enum.map(tail, fn x -> elem(Float.parse(x), 0) end)

    execute = get_operator_function(head)

    execute.(Enum.at(params, 0), Enum.at(params, 1))
  end

  def get_operator_function(operator) do
    functions_map = %{
      "+"   => fn (a,b) -> a + b end,
      "/"   => fn (a,b) -> a / b end,
      "*"   => fn (a,b) -> a * b end,
      "-"   => fn (a,b) -> a - b end,
      "++"  => fn (a,b) -> (a+1) + (b+1) end,
    }

    Map.get(functions_map, operator);
  end

end
