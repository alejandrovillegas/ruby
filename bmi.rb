
print "Ingresa tu peso: "
weight = gets.chomp.to_f

print "Ingresa tu Estatura: "
height = gets.chomp.to_f

bmi = weight / height**2

puts
print "#{bmi.round(2)} "

if bmi < 18.5
	puts "(Baja de peso)"
elsif bmi < 25
	puts "(normal)"
else 
	puts "(sobrepeso)"
end


	
