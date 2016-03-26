#!/usr/local/bin/ruby -w

allLines = []
File.open('mdrfoi.txt', 'r:ISO-8859-1:UTF-8').each do |line|
  values = line.split("\|")
  newValues = []
  values.each do |v|
  	if v.include? ','
  		v = '"' + v + '"'
  	end
  	newValues.push(v)
  end

  allLines.push(newValues)
end

File.open("cleandata.csv","w+:ISO-8859-1:UTF-8") do |file|
	allLines.each do |ele|
		file << ele.join(',')
	end
end


