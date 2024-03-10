puts 'This is a weight converter'

def prompt(message)
  puts message
  gets.chomp.downcase
end

def convert_weight(unit_of_measurement, weight)
  if unit_of_measurement != 'kg'
    kilograms = (weight / 2.204).round(2)
    puts "The weight in pounds is #{kilograms}"
  else
    pounds = (weight * 2.204).round(2)
    puts "The weight in pounds is #{pounds}"
  end
end

loop do
  unit_of_measurement = prompt("What is the unit of measurement you're converting from? [(K)g/(L)bs]")

  unless %w[k l].include?(unit_of_measurement)
    puts 'That is an invalid value'
    next
  end

  weight = prompt('What is the weight value').to_f

  convert_weight(unit_of_measurement, weight)

  user_choice = prompt('Do you want to convert another value [Y/N]')

  break unless user_choice == 'y'
end
