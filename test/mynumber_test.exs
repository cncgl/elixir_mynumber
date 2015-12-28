defmodule MynumberTest do
  use ExUnit.Case
  doctest Mynumber

  test "should true when valid corporate number" do
    valids = ["2010001163289", "1010601008968", "1012701000739", "1011203001683"]
    Enum.each valids, fn(x) -> assert Mynumber.corporate_number?(x) == true end
  end

  test "should false when invalid corporate number" do
    invalids =  ["2010001163281", "1010601008961", "1012701000731", "1011203001681", "1"]
    Enum.each invalids, fn(x) -> assert Mynumber.corporate_number?(x) == false end
  end

  test "should true when invalid individual number" do
    valids =
     ["895980423139", "436673173767", "430792811528", "107611545184",
      "964041141335", "044580705690", "439023617171", "680557982222",
      "335790979402", "763625921000", "237697461442", "801014241860",
      "999312076001", "390147969450", "659969299480", "401035903377",
      "222451878711", "157144228592", "107374955712", "548836529885"]
    Enum.each valids, fn(x) -> assert Mynumber.indivisual_number?(x) == true end
  end

  test "should false when invalid individual number" do
    invalids =
     ["828731078542", "430663651143", "211421187381", "627852730078",
      "693415034651", "189518719745", "105892595337", "491136797254",
      "345537562761", "348049767367", "398715343044", "387715333522",
      "551432497896", "923093948304", "337166860307", "914437209500",
      "475252998663", "983159735197", "106591838679", "710772400703", "1"]
    Enum.each invalids, fn(x) -> assert Mynumber.indivisual_number?(x) == false end
  end

  test "should true when valid number" do
    values = ["2010001163289", "430792811528"]
    Enum.each values, fn(x) -> assert Mynumber.valid?(x) == true end
  end
end
