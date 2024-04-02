require 'csv'
puts 'EventManager Initialized'

def clean_zipcode(zip)
  if zip == nil
    return "00000"
  end
  return "0" * (5 - zip.length) + zip
end

contents = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

contents.each do |row|
  name = row[:first_name]
  zip = row[:zipcode]
  zip = clean_zipcode(zip)
  puts "#{name} #{zip}"
end
