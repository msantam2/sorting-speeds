require 'require_all'
require_all 'sorts'

sorts = Dir["./sorts/*.rb"].map do |file|
  File.basename(file, File.extname(file)).to_sym
end

times = {}

sorts.each do |sort|
  a = Time.now
  method(sort).call((1..1000).to_a.reverse)
  b = Time.now
  time = b - a
  times["#{sort}"] = time
end


times.each do |sort, time|
  puts "#{sort} completed in #{time * 1000} milliseconds."
end

puts

puts "from fastest to slowest:"
times.sort_by { |_, time| time }.each do |sort, _|
  print "#{sort} > "
end
puts
