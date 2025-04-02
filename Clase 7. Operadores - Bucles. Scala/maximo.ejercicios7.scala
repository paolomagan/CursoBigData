import scala.io.StdIn


object valorMayor {
  def main(args: Array[String]): Unit = {
    var maximo = Int.MinValue
    for (i <- 1 to 3) {
        print("Ingresa el valor $i de 3: ")
        val nuevo = StdIn.readInt()
        
        if (nuevo > maximo){
            maximo = nuevo
        }
    }
    print("El valor máximo introducido es " + maximo)
  }
}


