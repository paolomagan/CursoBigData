import scala.io.StdIn

object sumaResta {

  def main(args: Array[String]): Unit = {
    var contador = 0
    print("Introduce Numero 1º: ")
    val n1 = StdIn.readFloat()

    print("Introduce Numero 2º: ")
    val n2 = StdIn.readFloat()

    print("Quieres sumar (s) o restar (r): ")
    val operacion = StdIn.readLine()


    var resultado = operacion match {
      case "r" => "El resultado de la operación es " + (n1 - n2)
      case "s" => "El resultado de la operación es " + (n1 + n2)
      case _ => "Debes escoger un valor entre estos 2: 'r' o 's'"
    }

    println(resultado)
  }
}

