#!/usr/bin/env ruby
require "csv"
require "pp"
arr_of_arrs = CSV.read("products.csv")

pp arr_of_arrs
