#hash
persona = {nombre: "Juan", edad: 25, ciudad: "Madrid", es_mujer: false}
puts persona [:nombre]
puts persona [:edad]
puts persona [:ciudad]
puts persona [:es_mujer]
puts persona
puts persona.keys

#bucles o ciclos
5.times {
    puts "hola"
}
#bloque
numeros=[1,2,3,4,5]
numeros.each do |numero|
    puts numero * 2
end
3.times{
    puts numeros[2]
}
# condicionales
edad=90
if edad >= 18 && edad < 84
    puts "Es mayor de edad"
elsif edad >= 85
    puts "Es tercera edad"
else 
    puts "Es menor de edad"    
end


