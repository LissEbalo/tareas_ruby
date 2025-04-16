class Conductor
  attr_accessor :nombre, :edad

  EDAD_MINIMA = 18

  def initialize(nombre, edad)
    @nombre = nombre
    @edad = edad
  end

  def presentarse
    puts "Soy #{@nombre} y tengo #{@edad} años."
  end

  def manejar_auto(auto)
    if @edad < EDAD_MINIMA
      puts "Error: #{@nombre} no puede manejar porque es menor de edad."
    else  
      puts "#{@nombre} está manejando el #{auto.marca} #{auto.modelo}."
    end
  end
end

class Auto
  attr_accessor :marca, :modelo, :conductor

  def initialize(marca, modelo, conductor=nil)
    @marca = marca
    @modelo = modelo
    @conductor = conductor
  end

  def asignar_conductor(conductor)
    if conductor.edad < Conductor::EDAD_MINIMA
      puts "Error: #{conductor.nombre} no puede ser conductor porque tiene menos de 18 años."
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

conductor1 = Conductor.new("Bodoque", 12)
conductor1.presentarse
auto1 = Auto.new("Mazda 6", "Sedán Japonés")
auto1.asignar_conductor(conductor1)
#conductor1.manejar_auto(auto1)