# EJERCICIO BLOCK & PRIME
require 'prime'
def prime
  yield 10
end  

#test
p prime {|num| Prime.first num} == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]



# Método average_grade con parámetro que llamara yield después.
def average_grade(parameter)
  # Se define la variable de t1
  t1 = Time.now
  # Se imprime Time started
  puts '-------Time started--------'
  # Se imprime el start time del valor t1.
  puts 'Start time:', t1 
  # Yield llama al parámetro
  yield(parameter)
  # Se define la variable de t2
  t2 = Time.now
  # Se imprime el End time con el valor de t2.
  puts 'End time:', t2
  # Se imprime Time finished después de que nos de el valor de t2, para indicar que es el tiempo final.
  puts '-------Time finished-------'
  # Se imprime el resultado de la resta entre los dos tiempos (t1 - t2). Esto posteriormente nos ayudará a saber el promedio
  puts "Result:", (t1 - t2), "seconds"
end
# Se define la variable de grades, a un array de valores.
grades = [1, 2, 3]
  # Se itera sobre el método.
  average_grade(grades) do |grades|
  # Se define la variable para la iteración anterior, para indicar que al rango de 1 al length del parámetro (grades), se le realice la operación a los valores (a,b) con .inject
  b = (1..grades.length).inject {|a,b| a+b}
  # Haciendo la división de la variable b entre el length de grades, se imprime el promedio total con resultado en valor flotante.
  puts "Average is:", b.to_f / grades.length
end

#test
# =>
# ------------Time started----------
# Start time: 2016-06-17 20:14:46 -0500

# "Average is: 7.6"

# End time: 2016-06-17 20:14:46 -0500
# -------------Time finished--------
# Result: 0.000142 seconds
