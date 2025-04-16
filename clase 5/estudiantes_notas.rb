require 'faker'

ASIGNATURAS = ["matematicas", "lenguaje", "ciencias", "historia", "artes"] # Lista de asignaturas disponibles


# Clase Estudiante
class Estudiante
  attr_accessor :nombre, :notas

  # Inicializa un estudiante con su nombre y sus notas
  def initialize(nombre=nil)
    if nombre
      @nombre = nombre
    else
      @nombre = Faker::Name.name  # Genera un nombre aleatorio
    end
    @notas = {
      matematicas:[], # "matematicas" => []
      lenguaje:   [],
      ciencias:   [],
      historia:   [],
      artes:      [] 
    }
    # @notas[:matematicas] => [] # arreglo de notas
  end

  def agregar_nota(nota, asignatura) # agregar_nota(6.5, "matematica") ó agregar_nota(6.5, "matematica".to_sym)
    if nota >= 1.0 && nota <= 7.0
      @notas[asignatura.to_sym] << nota 
      #@notas[asignatura.to_sym].push(nota)
    else
      puts "Error al ingresar la nota #{nota} del alumno #{@nombre} en la asignatura #{asignatura}"
    end    
  end

  def calcular_promedio_asignatura(asignatura)
    notas = @notas[asignatura.to_sym]
    return "No hay notas. Agregue notas" if notas.empty?
    #suma_de_notas = 0
    #@notas[asignatura.to_sym].each do |nota|
    #  suma_de_notas += nota
    #end
    #puts "\nEstoy calculando el promedio: suma_de_notas: #{suma_de_notas}"
    #puts "\nEstoy calculando el promedio: @notas: #{@notas[asignatura.to_sym].size}"
    #promedio = suma_de_notas / @notas[asignatura.to_sym].size
    promedio = notas.sum / notas.size
    promedio.round(1)
    #(suma_de_notas / @notas[asignatura.to_sym].size).round(1)
  end



  def informe_notas
    puts "---------------------------"
    puts "Informe de notas del alumno \n#{@nombre}"
    puts "---------------------------"
    ASIGNATURAS.each do |asignatura|
      puts "#{asignatura}: #{calcular_promedio_asignatura(asignatura)}"
    end
    puts "---------------------------"
  end
end

# Clase Curso
class Curso
end
# Configuraciones para crear estudiantes y asignarles notas
#numero_estudiantes = 10 # Número de estudiantes a generar
numero_notas = 6 # Número de notas por asignatura

# Generación automática de estudiantes con notas aleatorias para un curso en cada una de sus asignaturas
# Usar los métodos definidos: Ranking del curso, ranking por asignatura del curso, informe de notas de un estudiante, etc.

estudiante1 = Estudiante.new

ASIGNATURAS.each do |asignatura|
  numero_notas.times do
    estudiante1.agregar_nota(rand(1.0..7.0).round(1), asignatura)
  end 
end

puts estudiante1.notas
puts estudiante1.informe_notas