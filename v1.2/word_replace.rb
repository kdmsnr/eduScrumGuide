# -*- coding: utf-8 -*-
require "csv"
$dictionary = {}
CSV.foreach('words.csv') do |row|
  $dictionary[row[0]] = row[1]
end

outputs = []
ARGF.each do |line|
  outputs << line.gsub(/\[\[(.*?)\]\]/) do
    $dictionary[$1] || "★#{$1}★"
  end
end

puts outputs.join

