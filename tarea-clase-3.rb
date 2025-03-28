class Conductor
  attr_accessor :nombre, :edad

  def initialize(nombre, edad)
    @nombre = nombre
    @edad = edad
  end

  def presentarse
    puts "Soy #{@nombre} y tengo #{@edad} años."
  end

  def manejar_auto(auto)
    if @edad < 18
      puts "Error: #{@nombre} no puede manejar porque es menor de edad."
    else
      puts "#{@nombre} está manejando el #{auto.marca} #{auto.modelo}."
    end
  end
end

class Auto
  attr_accessor :marca, :modelo, :conductor

  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
    @conductor = nil
  end

  def asignar_conductor(conductor)
    if conductor.edad < 18
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


auto = Auto.new("Mazda 6", "Sedán Japonés")
lucy = Conductor.new("Lucy", 11)
lissette = Conductor.new("Lissette", 39)

lucy.presentarse
auto.asignar_conductor(lucy)

lissette.presentarse
auto.asignar_conductor(lissette)
auto.conducir
lissette.manejar_auto(auto)
lucy.manejar_auto(auto)
