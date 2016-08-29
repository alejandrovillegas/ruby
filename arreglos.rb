puts "arreglo"
arreglo = gets.chomp 
puts "numero"
numero = gets.chomp

puts arreglo
puts numero


def count_matches ([], numero)
  cont = 0
  numeros.each do 
    if numeros[]== numero
      cont += 1 
    end
  cont
end