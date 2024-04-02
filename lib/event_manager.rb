puts 'Event Manager Initialized'

lines = File.readlines('event_attendees.csv')
row_index = 0
lines.each_with_index do |line, index|
  next if index == 0
  columns = line.split(",")
  name = columns[2]
  puts name
end
