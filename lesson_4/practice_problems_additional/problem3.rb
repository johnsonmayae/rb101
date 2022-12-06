ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages = ages.select {|key, value| value <= 100}

puts ages