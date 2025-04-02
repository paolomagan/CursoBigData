import scala.io.StdIn

object credenciales {

  def main(args: Array[String]): Unit = {
    val usuarioValido = "paolomagan"
    val passValida = "vertigo14"
    var contador = 1
    var resultado=""
    print("Introduce Usuario: ")
    var usuario = StdIn.readLine()

    print("Introduce Contraseña: ")
    var pass = StdIn.readLine()

    while (contador<4){
      contador += 1
      if (usuario == usuarioValido && pass == passValida){
        contador=4
        resultado= "Hola paolomagan!"
      }else if(contador>3){
        resultado = "Usuario o contraseña incorrecto!. vuelva a intentarlo pasados unos minutos"
      }else{
        println("Credenciales incorrectas. Vuelve a intentarlo.")
        print("Introduce Usuario: ")
        usuario = StdIn.readLine()

        print("Introduce Contraseña: ")
        pass = StdIn.readLine()
      }
    }

    println(resultado)
  }
}

