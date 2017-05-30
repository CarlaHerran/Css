#EJERCICIO DE NUMERO DE PERSONAS EN UN RANGO DE EDAD --------- # 3

# def total_between_age (array, min_age, max_age)
#   count = 0
#   array.each do |num|
#     # Si el num se encuentra en el rango de (min_age..max_age)
#     if num >= min_age && num<= max_age
#       #Regresa el valor del contador.
#       count += 1
#     end
#   end
#   count
# end

# # Pruebas
# p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
# p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4


#EJERCICIO DE FUNCION FACTORIAL------------------------------- # 4

# def factorial (int)
#   if int == 0 
#      1
#   else  
#     for i in 1...int do 
#       int *= i
#     end
#     int
#   end
# end  


# # Pruebas

# p factorial(5) == 120
# p factorial(4) == 24
# p factorial(0) == 1
# p factorial(1) == 1
# p factorial(6) == 720


