import scala.io.StdIn

object evaluaLetra {

  def main(args: Array[String]): Unit = {
    
    print("Introduce una de estas letras: a, b, c: ")
    val letra = StdIn.readLine()

    var resultado = letra match {
      case "a" => "El valor de esta letra es 7"
      case "b" => "El valor de esta letra es 9"
      case "c" => "El valor de esta letra es 101"
      case _ => "Has escogido un valor no válido. Los válidos son: a, b, c"
    }

    println(resultado)
  }
}

