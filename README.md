# ElixirMynumber

[![Build Status](https://travis-ci.org/cncgl/elixir_mynumber.svg?branch=master)](https://travis-ci.org/cncgl/elixir_mynumber)
[![hex.pm version](https://img.shields.io/hexpm/v/mynumber.svg)](https://hex.pm/packages/mynumber)

mynumber validation for Elixir

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add elixir_mynumber to your list of dependencies in `mix.exs`:

        def deps do
          [{:mynumber, "~> 1.0.0"}]
        end

  2. Ensure mynumber is started before your application:

        def application do
          [applications: [:mynumber]]
        end

## Sample Code

```
Mynumber.corporate_number?("1010601008968"); # => true
Mynumber.individual_number?("548836529885"); # => true
Mynumber.valid?("1010601008968"); # => true
```

## Spec

- https://www.j-lis.go.jp/data/open/cnt/3/1282/1/H2707_qa.pdf
- https://www.nta.go.jp/mynumberinfo/FAQ/03houjinbangoukankei.htm


## License

MIT
