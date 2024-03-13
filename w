[1mdiff --git a/src/main/kotlin/fecha.kt b/src/main/kotlin/fecha.kt[m
[1mindex f5c5114..c7dd6bb 100644[m
[1m--- a/src/main/kotlin/fecha.kt[m
[1m+++ b/src/main/kotlin/fecha.kt[m
[36m@@ -7,6 +7,10 @@[m [mclass Fch(private val d: Int, private val m: Int, private val a: Int) {[m
         if (m < 1 || m > 12) return false[m
 [m
         // determinamos la cantidad de días del mes:[m
[32m+[m[32m        return diasMes()[m
[32m+[m[32m    } // … más métodos[m
[32m+[m
[32m+[m[32m    private fun diasMes(): Boolean {[m
         var diasMes = 0[m
         when (m) {[m
             1, 3, 5, 7, 8, 10, 12 -> diasMes = 31[m
[36m@@ -14,5 +18,5 @@[m [mclass Fch(private val d: Int, private val m: Int, private val a: Int) {[m
             2 -> diasMes = if (a % 400 == 0 || a % 4 == 0 && a % 100 != 0) 29 else 28[m
         }[m
         return if (d > diasMes) false else true[m
[31m-    } // … más métodos[m
[32m+[m[32m    }[m
 }[m
