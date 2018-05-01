/*
(e) What is printed when the following code is executed?

answer: 26, the variable y declared in foo shadows the outer variable
        the outer variable x is used by foo due to lexical scoping rules
        so the result is 10 + 11 + 5 = 26
*/

fun main(args : Array<String>) {
  var x = 3
  val y = 5
  val foo = {z: Int ->
    val y = 11
    x+y+z
  }
  x = 10
  println(foo(y))
}
