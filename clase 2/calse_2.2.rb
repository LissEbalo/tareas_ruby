class Persona
    attr_accessor :nombre, :edad, :peso

    def initialize(nombre, edad, peso) #metodo inicializador
        @nombre = nombre
        @edad = edad
        @peso = peso
    end

    def saludar
        puts "Hola, mi nombre es #{@nombre} y mi edad es #{@edad}"
    end 

    def decir_peso
        puts "Mi peso eso #{@peso}"
    end

    def subir_peso(kilos)
        @peso = @peso + kilos
        puts "Subi de peso, ahora peso #{@peso}"
    end

end

persona1 = Persona.new("Liss", 39, 69)
persona1.saludar
persona1.decir_peso
persona1.subir_peso(1)

persona2 = Persona.new("Lucy", 11, 35)
persona2.saludar
persona2.decir_peso
persona2.subir_peso(2)

# Tarea 1: Clase Mascota con comportamiento similar
# Objetivo: Crear una clase Mascota que tenga nombre, tipo (perro, gato, etc.), y edad.
# Implementa métodos para:

# Presentarse (saludar)

# Cumplir años (cumplir_anios)

# Mostrar su tipo (mostrar_tipo)

# Extra: Crea 2 mascotas diferentes y llama sus métodos.

class Mascota
    attr_accessor :nombre, :edad, :tipo
    
    def initialize(nombre, edad, tipo  )
        @nombre = nombre
        @edad = edad
        @tipo = tipo
    end

    def saludar
        puts "Hola, mi nombre es #{@nombre}"
    end

    def cumplir_anios
        puts "Tengo #{@edad} años de edad"
    end

    def mostrar_tipo
        puts "Soy un #{@tipo} "
    end
end

mascota1 = Mascota.new("Mimi", 4, "Gato")
mascota1.saludar
mascota1.cumplir_anios
mascota1.mostrar_tipo

mascota2 = Mascota.new("Tortugita", 12, "Tortuga")
mascota2.saludar
mascota2.cumplir_anios
mascota2.mostrar_tipo


# Tarea 2: Clase Auto que simula acciones de un vehículo
# Objetivo: Crear una clase Auto con marca, modelo y velocidad.
# Agrega métodos para:

# Mostrar información del auto

# Acelerar (aumenta la velocidad)

# Frenar (disminuye la velocidad)

# Extra: Simula el uso de 2 autos distintos acelerando y frenando.

class Auto
    def initialize (marca, modelo, velocidad, frenando)
        @marca = marca
        @modelo = modelo
        @velocidad = velocidad
        @frenando = frenando
    end

    def informacion
        puts "Este Auto es de la marca #{@marca}, modelo #{@modelo}"
    end

    def acelerar
        puts "El auto acelero, ahora va a #{@velocidad} Kilometros x hora"
    end

    def frenar
        puts "El auto bajo su velocidad, ahora va a #{@frenando} Kilometros x hora"
    end
end

auto1= Auto.new("Honda","Civic", 70, 40)
auto1.informacion
auto1.acelerar
auto1.frenar


auto2= Auto.new("Mazda","Sedán Japonés", 120, 80)
auto2.informacion
auto2.acelerar
auto2.frenar

