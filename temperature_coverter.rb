puts 'This is a temperature converter'

def prompt(message)
  puts message
  gets.chomp.downcase
end

def convert_temperature(unit_of_measurement, temperature)
  if unit_of_measurement == 'c'
    farenheit = (temperature * 5 / 9 + 32).round(2)
    puts "The temperature in farenheit is: #{farenheit} "
  else
    celcius = ((temperature - 32) * 5 / 9).round(2)
    puts "The temperature in celcius is: #{celcius}"
  end
end

loop do
  unit_of_measurement = prompt('What unit of measurement are you converting from? [f/c]')

  unless %w[f c].include?(unit_of_measurement)
    puts 'That is not a valid value'
    next
  end

  temperature = prompt('What is the value you wish to convert?').to_f

  convert_temperature(unit_of_measurement, temperature)

  user_input = prompt('Do you want to convert another value? [y/n]')

  break unless user_input == 'y'
end
