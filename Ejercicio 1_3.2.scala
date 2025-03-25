import scala.io.StdIn

object UserDataApp {
  def main(args: Array[String]): Unit = {
    // Solicitar datos al usuario
    println("Ingrese su nombre:")
    val nombre = StdIn.readLine()

    println("Ingrese sus apellidos:")
    val apellidos = StdIn.readLine()

    println("Ingrese su email:")
    val email = StdIn.readLine()

    println("Ingrese su dirección:")
    val direccion = StdIn.readLine()

    // Almacenar los datos en un array
    val userData = Array(nombre, apellidos, email, direccion)

    // Mostrar los datos ingresados
    println("Datos ingresados: " + userData.mkString(", "))

  }
}