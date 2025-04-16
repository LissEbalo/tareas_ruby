require 'faker'  # Cargar librería para nombres aleatorios

# Lista de asignaturas
asignaturas = ["matematica", "lenguaje", "ciencias", "historia", "artes"]

# Clase Estudiante
class Estudiante
  def initialize(nombre)
    @nombre = nombre
    @notas = {
      "matematica" => [],
      "lenguaje" => [],
      "ciencias" => [],
      "historia" => [],
      "artes" => []
    }
  end

  def agregar_nota(asignatura, nota)
    @notas[asignatura] << nota
  end

  def promedio_asignatura(asignatura)
    suma = 0
    total = @notas[asignatura].length
    @notas[asignatura].each do |nota|
      suma += nota
    end
    promedio = suma / total.to_f
    return promedio
  end

  def promedio_general
    total_promedios = 0
    cantidad = 0

    @notas.each do |asignatura, notas|
      if notas.length > 0
        total_promedios += promedio_asignatura(asignatura)
        cantidad += 1
      end
    end

    return total_promedios / cantidad.to_f
  end

  def mostrar_informe
    puts "Estudiante: #{@nombre}"
    @notas.each do |asignatura, notas|
      puts "- #{asignatura.capitalize}: #{promedio_asignatura(asignatura).round(2)}"
    end
    puts "Promedio general: #{promedio_general.round(2)}"
    puts "-----------------------------"
  end
end

# Crear estudiante con nombre aleatorio
nombre_aleatorio = Faker::Name.name
estudiante = Estudiante.new(nombre_aleatorio)

# Agregar algunas notas
estudiante.agregar_nota("matematica", 5.0)
estudiante.agregar_nota("matematica", 6.0)
estudiante.agregar_nota("matematica", 6.5)
estudiante.agregar_nota("lenguaje", 4.0)
estudiante.agregar_nota("lenguaje", 6.0)
estudiante.agregar_nota("lenguaje", 5.5)
estudiante.agregar_nota("ciencias", 6.5)
estudiante.agregar_nota("ciencias", 5.5)
estudiante.agregar_nota("ciencias", 7.0)
estudiante.agregar_nota("historia", 7.0)
estudiante.agregar_nota("historia", 6.5)
estudiante.agregar_nota("historia", 6.5)
estudiante.agregar_nota("artes", 7.0)
estudiante.agregar_nota("artes", 7.0)
estudiante.agregar_nota("artes", 6.0)

#------

# Mostrar informe
estudiante.mostrar_informe

estudiante2 = Estudiante.new(nombre_aleatorio)

estudiante2.agregar_nota("matematica", 5.0)
estudiante2.agregar_nota("matematica", 6.0)
estudiante2.agregar_nota("matematica", 6.5)
estudiante2.agregar_nota("lenguaje", 4.0)
estudiante2.agregar_nota("lenguaje", 4.0)
estudiante2.agregar_nota("lenguaje", 5.5)
estudiante2.agregar_nota("ciencias", 6.5)
estudiante2.agregar_nota("ciencias", 5.5)
estudiante2.agregar_nota("ciencias", 5.0)
estudiante2.agregar_nota("historia", 7.0)
estudiante2.agregar_nota("historia", 6.5)
estudiante2.agregar_nota("historia", 6.5)
estudiante2.agregar_nota("artes", 7.0)
estudiante2.agregar_nota("artes", 7.0)
estudiante2.agregar_nota("artes", 7.0)

estudiante2.mostrar_informe

#-------
estudiante3 = Estudiante.new(nombre_aleatorio)

estudiante3.agregar_nota("matematica", 5.0)
estudiante3.agregar_nota("matematica", 6.0)
estudiante3.agregar_nota("matematica", 6.5)
estudiante3.agregar_nota("lenguaje", 4.0)
estudiante3.agregar_nota("lenguaje", 6.0)
estudiante3.agregar_nota("lenguaje", 4.5)
estudiante3.agregar_nota("ciencias", 6.5)
estudiante3.agregar_nota("ciencias", 5.5)
estudiante3.agregar_nota("ciencias", 6.0)
estudiante3.agregar_nota("historia", 7.0)
estudiante3.agregar_nota("historia", 6.5)
estudiante3.agregar_nota("historia", 6.5)
estudiante3.agregar_nota("artes", 7.0)
estudiante3.agregar_nota("artes", 5.0)
estudiante3.agregar_nota("artes", 6.0)

estudiante3.mostrar_informe

#-------
estudiante4 = Estudiante.new(nombre_aleatorio)

estudiante4.agregar_nota("matematica", 7.0)
estudiante4.agregar_nota("matematica", 6.0)
estudiante4.agregar_nota("matematica", 6.5)
estudiante4.agregar_nota("lenguaje", 7.0)
estudiante4.agregar_nota("lenguaje", 6.0)
estudiante4.agregar_nota("lenguaje", 5.5)
estudiante4.agregar_nota("ciencias", 6.5)
estudiante4.agregar_nota("ciencias", 5.5)
estudiante4.agregar_nota("ciencias", 7.0)
estudiante4.agregar_nota("historia", 7.0)
estudiante4.agregar_nota("historia", 6.5)
estudiante4.agregar_nota("historia", 6.5)
estudiante4.agregar_nota("artes", 7.0)
estudiante4.agregar_nota("artes", 7.0)
estudiante4.agregar_nota("artes", 7.0)

estudiante4.mostrar_informe
