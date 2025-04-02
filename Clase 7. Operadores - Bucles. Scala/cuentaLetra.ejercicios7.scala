import scala.io.StdIn

object cuentaLetra {


  def main(args: Array[String]): Unit = {
    var contador = 0
    print("Introduce una frase: ")
    val frase = StdIn.readLine()

    print("Introduce un caracter: ")
    val caracter = StdIn.readChar()

    for (c <- frase) {
      if (c == caracter) contador += 1
    }

    println(s"El caracter elegido se repite $contador veces")
  }
}

