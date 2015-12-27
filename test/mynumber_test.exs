defmodule MynumberTest do
  use ExUnit.Case
  doctest Mynumber

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "" do
    valid = ["2010001163289", "1010601008968", "1012701000739", "1011203001683"]
    Enum.each valid, fn(x) -> assert Mynumber.corporate_number(x) == true end
  end
end
