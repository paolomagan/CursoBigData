error id: 
file:///C:/Users/Pablo/Desktop/7_Ejercicios/ejercicios7.scala
empty definition using pc, found symbol in pc: 
empty definition using semanticdb
empty definition using fallback
non-local guesses:
	 -println.
	 -println#
	 -println().
	 -scala/Predef.println.
	 -scala/Predef.println#
	 -scala/Predef.println().
offset: 674
uri: file:///C:/Users/Pablo/Desktop/7_Ejercicios/ejercicios7.scala
text:
```scala
import scala.collection.mutable.ArrayBuffer
import scala.io.StdIn

object PruebaFrutas {
  def main(args: Array[String]): Unit = {
    val frutasMutable = ArrayBuffer("Manzana", "Banana")

    println("Frutas actuales: " + frutasMutable.mkString(", "))

    print("Ingresa una nueva fruta: ")
    val nuevaFruta = StdIn.readLine()

    frutasMutable += nuevaFruta
    println("Frutas actualizadas: " + frutasMutable.mkString(", "))

    val ultimaFruta = frutasMutable.remove(frutasMutable.length - 1)
    println("Última fruta eliminada: " + ultimaFruta)
    println("Frutas finales: " + frutasMutable.mkString(", "))
  }
}


for (i <- 1 to 3) {
  pr@@intln(s"Valor: $i")
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: 