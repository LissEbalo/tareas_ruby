# Clase Conductor
class Conductor
    attr_accessor :nombre, :edad
  
    EDAD_MINIMA = 18
  
    def initialize(nombre, edad)
      @nombre = nombre
      @edad = edad
    end
  
    def presentarse
      puts "Hola, mi nombre es #{@nombre} y tengo #{@edad} años"
    end
  
    def manejar_auto(auto)
      if @edad >= EDAD_MINIMA
        puts "#{@nombre} recibió el auto #{auto.marca} #{auto.modelo}."
      else
        puts "Error: #{@nombre} no puede manejar porque es menor de edad"
      end
    end
  end
  
  # Clase Auto
  class Auto
    attr_accessor :marca, :modelo, :conductor
  
    def initialize(marca, modelo, conductor = nil)
      @marca = marca
      @modelo = modelo
      @conductor = conductor
    end
  
    def asignar_conductor(conductor)
      if conductor.edad < Conductor::EDAD_MINIMA
        puts "Error: #{conductor.nombre} no puede conducir porque es menor de edad"
      else
        @conductor = conductor
        puts "#{conductor.nombre} ahora es el conductor del #{@marca} #{@modelo}."
      end
    end
  
    def detalles
      if @conductor
        puts "Auto: #{@marca} #{@modelo}, Conductor: #{@conductor.nombre}"
      else
        puts "Auto: #{@marca} #{@modelo}, sin conductor asignado."
      end
    end
  
    def conducir
      if @conductor
        puts "El #{@marca} #{@modelo} está en marcha con #{@conductor.nombre} al volante."
      else
        puts "No se puede conducir el #{@marca} #{@modelo} porque no tiene conductor asignado."
      end
    end
  end
  
  # Ejecución
  conductor1 = Conductor.new("Lucy", 12)
  conductor1.presentarse
  auto1 = Auto.new("Mazda 6", "Sedán Japonés")
  auto1.asignar_conductor(conductor1)
  conductor1.manejar_auto(auto1)
  