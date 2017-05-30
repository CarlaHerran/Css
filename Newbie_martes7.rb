# Definimos una clase que será nuestro juego de Adivina el número.
class NumberGuessingGame
  # Utilizamos el método initialize para construír los  objetos de la clase.
  def initialize
    # Esta variable se genera para indicar que se escogerá un número random hasta el 10.
    # Como hay una forma interactiva, y otra con pruebas (comentadas abajo), se indican ambas formas de variable. 
    @rand = rand(10)
    #@rand = 6
  end
  # Se define el método guess para generar la respuesta al número ingresado.
  def guess(num)
    # Se aplica la condición if y else para que nos imprima las frases correspondientes dependiendo de si el número ingresado es mayor, menor, o igual.
    # Si el número ingresado es menor, imprime la frase "Too Low"
    if @rand > num 
      "Too low"
    # Si el número ingresado es mayor, imprime la frase "Too high" 
    elsif @rand < num
      "Too high"
    # Si el número ingresado es igual, se imprime la frase "You got it!"  
    elsif @rand == num
      "You got it!"  
    end

  end

end


# Se define el método 'menu' para la parte interactiva del juego.
def menu
  # Frase de inicio del juego, con indicación.
  puts "Presiona 1 para jugar adivina el número o 2 para salir"
  # Variable para el ingreso de valor del usuario.
  pres = gets.to_i
  # Condición para que inicie el juego, a partir de la indicación anterior.
  if pres == 1 
    # Instancia del juego.
    game = NumberGuessingGame.new
    # Variable para guardar el resultado.
    result = ""
    # Condición para que pueda continuar el juego, mientras que el usuario aún no haya adivinado.
    while result != "You got it!"
      # Se imprime la frase 'Adivina un número del 0 al 9' para que el usuario continúe adivinando.
      puts "Adivina un número del 0 al 9"
      #Variable para que el número sea entero.
      num = gets.to_i
      # Se imprime el número que ingresa el usuario, guardándolo en el historial del juego.
      p result = game.guess(num)
    end
    # Se repite el método a menos de que el usuario decida presionar la opción para salir.
    menu
  else
    false
  end
end

flag = true
while flag
  flag = menu
end
# Fin del juego.
puts "Gracias por jugar"

# Pruebas

# game = NumberGuessingGame.new

# p game.guess(5) == "Too low"

# p game.guess(8) == "Too high"

# p game.guess(7) == "Too high"

# p game.guess(6) == "You got it!"