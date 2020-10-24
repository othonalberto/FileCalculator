defmodule ExecutorTest do
  use ExUnit.Case
  doctest Executor

  test "get operator function" do
    assert Executor.get_operator_function("++").(0, 0) == 2
  end

  test "calculate" do
    assert Executor.calculate(["*", "2", "10"]) == 20
  end

end
