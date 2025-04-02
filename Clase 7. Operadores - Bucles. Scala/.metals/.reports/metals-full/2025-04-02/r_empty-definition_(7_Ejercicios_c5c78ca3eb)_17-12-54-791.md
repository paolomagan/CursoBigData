error id: scala/Int.MinValue.
file:///C:/Users/Pablo/Desktop/7_Ejercicios/ejercicios7.cuentaLetra.scala
empty definition using pc, found symbol in pc: scala/Int.MinValue.
semanticdb not found
empty definition using fallback
non-local guesses:
	 -Int.MinValue.
	 -Int.MinValue#
	 -Int.MinValue().
	 -scala/Predef.Int.MinValue.
	 -scala/Predef.Int.MinValue#
	 -scala/Predef.Int.MinValue().
offset: 154
uri: file:///C:/Users/Pablo/Desktop/7_Ejercicios/ejercicios7.cuentaLetra.scala
text:
```scala
import scala.io.StdIn


object valorMayor {
  def main(args: Array[String]): Unit = {
    val frase = StdIn.readLine()
    var caracter = Int.MinVal@@ue
    for (i <- 1 to 3) {
        print("Introduce una frase de la que se contará un caracter: ")
        val nuevo = StdIn.readLine()
        
        if (nuevo > maximo){
            maximo = nuevo
        }
    }
    print("El valor máximo introducido es " + maximo)
  }
}



```


#### Short summary: 

empty definition using pc, found symbol in pc: scala/Int.MinValue.