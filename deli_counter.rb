# Write your code here.
def line(deli)
  lines = "The line is currently"
  if deli.size == 0
    lines = lines + " empty."
  else
    lines = "#{lines}: " + deli.each_with_index.map { |p,i|
      "#{i+1}. #{p}"
    }.join(" ")
  end
  puts lines
end

def take_a_number(deli, name)
  deli << name
  puts "Welcome, #{name}. You are number #{deli.size} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    name = deli.shift
    puts "Currently serving #{name}."
  end
end
