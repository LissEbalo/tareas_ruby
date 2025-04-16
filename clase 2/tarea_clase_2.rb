class Persona
  attr_accessor :nombre, :edad, :peso

  def initialize(nombre, edad, peso)
    @nombre = nombre
    @edad = edad
    @peso = peso
  end

  def saludar
    puts "¡Hola! Me llamo #{@nombre}, tengo #{@edad} años."
  end

  def decir_peso
    puts "Mi peso actual es #{@peso} kg."
  end

  def subir_peso(cantidad)
    @peso += cantidad
    puts "He subido #{cantidad} kg. Ahora peso #{@peso} kg."
  end

  def bajar_peso(cantidad)
    @peso -= cantidad
    puts "He bajado #{cantidad} kg. Ahora peso #{@peso} kg."
  end

  def cumplir_anios
    @edad += 1
    puts "¡Hoy es mi Cumpleaños! Ahora tengo #{@edad} años."
  end
end

# Creando persona
persona1 = Persona.new("Ana", 25, 60)
persona1.saludar
persona1.decir_peso
persona1.subir_peso(5)
persona1.bajar_peso(3)
persona1.cumplir_anios

# Tarea 2
class Animal
  attr_accessor :especie, :color, :edad, :peso

  def initialize(especie, edad, peso, color)
    @especie = especie
    @edad = edad
    @color = color
    @peso = peso
  
   
  end

  def saludar
    puts "Soy un #{@especie} y tengo #{@edad} años. A pesar de tener tantos años soy un Dragon pequeño."
  end
  
  def color
    puts "Mis escamas son de color #{@color}, ¡brillan como la luna!"
  end

  def decir_peso
    puts "Peso #{@peso} kg."
  end

  def subir_peso(cantidad)
    @peso += cantidad
    puts "¡Me comi una Vaca entera yo solo! He ganado #{cantidad} kg. Ahora peso #{@peso} kg."
  end

  def bajar_peso(cantidad)
    @peso -= cantidad
    puts "Mi ama me regaño y me hizo ejercitarme, he perdido #{cantidad} kg. Ahora peso #{@peso} kg."
  end

  def cumplir_anios
    @edad += 1
    puts "¡Un año mas de vida!. Ahora tengo #{@edad} años."
  end

end

# Creando un animal
dragon = Animal.new("Dragon", 175, 70, "blanco")
dragon.saludar
dragon.decir_peso
dragon.color
dragon.subir_peso(10)
dragon.bajar_peso(5)
dragon.cumplir_anios