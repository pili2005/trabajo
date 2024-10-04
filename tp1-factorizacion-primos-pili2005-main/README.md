[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/ApE1GhS7)
# TP 1 - Algoritmos y Estructuras de Datos 1 - Año 2024

## Este TP debe realizarse en forma individual.

La integridad académica es un principio esencial en todos los aspectos de la educación.
En el contexto de los exámenes esto es `fundamental`.
El plagio y el pasar el trabajo de otros como propio representan una grave violación de este valor.
El plagio implica copiar o parafrasear el trabajo de alguien más sin atribuir adecuadamente la autoría.
Pasar el trabajo de otros como propio es aún mas grave, ya que no refleja el conocimiento adquirido.
La integridad académica demanda `originalidad`, `honestidad` y `respeto` hacia el trabajo `propio` y de `otros`.
Promover y mantener altos estándares de integridad académica es esencial para preservar la calidad y el valor de la educación.

## *************************************
##  FECHA DE ENTREGA:  Viernes 4 de Octubre hasta las 23:59:59 hr
## *************************************



## Situación Problemática

El Teorema Fundamental de la Aritmética establece que todo número entero positivo mayor que 1 tiene una única factorización en números primos, sin importar el orden en que se escriban los factores. Este principio es clave en matemática, ya que muestra que los números primos son los "bloques básicos" a partir de los cuales se construyen todos los demás números. Además, tiene aplicaciones importantes en áreas como la criptografía y la teoría de números.

La factorización en números primos es el proceso mediante el cual se descompone un número entero en el producto de números primos. Por ejemplo, el número 60 se puede factorizar como `360 = 2 × 2 × 2 × 3 × 3 × 5`, y que agrupando como potencias los primos repetidos se tiene que 360 = 2<sup>3</sup> x 3<sup>2</sup> x 5<sup>1</sup>

Si bien este proceso es relativamente sencillo para números pequeños, se vuelve extremadamente complejo y computacionalmente costoso a medida que los números aumentan, especialmente si son muy grandes y tienen pocos factores primos. Esta propiedad es lo que hace que la factorización sea útil para la seguridad criptográfica.

## Uso en Criptografía

El primer algoritmo de clave pública, y el más utilizado, se conoce con el nombre de RSA, nombrado así en honor a sus creadores Rivest, Shamir y Adleman. El mismo fue desarrollado en 1977 en el Instituto Tecnológico de Massachusetts (MIT). La seguridad de RSA, y de otros algoritmos similares, se basa en el hecho de que, aunque es fácil multiplicar dos números primos grandes para obtener un número compuesto, la operación inversa (factorización) es extremadamente difícil de realizar cuando los números involucrados son muy grandes. 
Los mensajes enviados se representan mediante números, y el funcionamiento se basa en el producto, conocido, de dos números primos grandes elegidos al azar y mantenidos en secreto. Actualmente estos primos son del orden de 10<sup>300</sup> .


## Actividad

En este trabajo se pretende desarrollar un algoritmo en Haskell que factorize números enteros positivos mayores a 1. Es decir, se deberá implementar la siguiente función:

```
factorizar :: Int -> [(Int,Int)]
```

En donde, reciba un número entero positivo, calcule su factorización y retorne una lista de pares de números enteros. Cada par representará un número primo y su respectiva potencia en la factorización del número original. Por ejemplo:

```
200 = 2 x 2 x 2 x 5 x 5
----------
Si se ejecuta
> factorizar 200

se espera como resultado:
> [(2,3), (5,2)]

----------
Si se ejecuta
> factorizar 29

se espera como resultado:
> [(29,1)]
```

**Aclaración:** El orden de los factores es irrelevante. Siguiendo con el ejemplo, para el número 200 tanto `[(2,3), (5,2)]` como `[(5,2), (2,3)]` son soluciones válidas.

Para dar solución a este problema vamos a empezar resolviendo problemas más simples que nos ayuden a calcular lo que queremos. En terminos generales, necesitamos:

1 . Encontrar los divisores del número. 

2 . Quedarme sólo con los divisores primos del número.

3 . Contar cuántas veces aparece cada primo en la factorización.

4 . Devolver una lista de pares donde cada par es un número primo y su exponente.


Es por ello que antes de implementar la función `factorizar`, deberán implementar las siguientes funciones auxiliares:

```
-- | Dados dos enteros X e Y, retorna True si X divide a Y, caso contrario False
divide :: Int -> Int -> Bool

-- | Dado un número X, retorna la lista de todos los divisores de X.
-- Ej: divisores 10 = [1,2,5,10]
divisores :: Int -> [Int]

-- | Dado un número, determina si es un número primo.
esPrimo :: Int -> Bool

-- | Dado un número X, retorna la lista de todos los divisores primos de X.
-- Ej: divisoresPrimos 10 = [2,5]
divisoresPrimos :: Int -> [Int]

-- | Dada una lista de números, comprime la lista contando las repeticiones adyacentes.
-- Ej: comprimir [2,2,2,5,2,2] = [(2,3), (5,1), (2,2)]
comprimir :: [Int] -> [(Int, Int)]
```

**IMPORTANTE:** Deberán respetar el perfil de las funciones definidas.


En resumen, para resolver el proyecto se deberán completar las siguientes consignas:

1. Inscribirse en GitHub Classroom y obtener el código base del proyecto.
2. Implementar las funciones del archivo `src/TP1.hs` que están marcadas como indefinidas, las cuales sirven de base para la solución.
3. Implementar la función `factorizar`. Es posible añadir nuevas funciones auxiliares pero no está permitido modificar el perfil de las funciones ya provistas.
4. Entregar la solución completa del proyecto en tiempo y forma a través de GitHub Classroom.

## Uso de Stack

El proyecto se creó utilizando la herramienta [stack](https://docs.haskellstack.org/en/stable/), que permite desarrollar proyectos en Haskell. Para poder compilar el proyecto y ejecutarlo se debe contar con stack instalado en el equipo.

El uso de stack es sencillo:

- Ejecución: `stack run <número>` ejecuta el programa. Tenga en cuenta que el programa toma como argumento el número a factorizar. Por ejemplo, escribiendo en la terminal `stack run 118800`, el programa deberá mostrar `La factorización es: [(2,4),(3,3),(5,2),(11,1)]`. (Esto solo funcionará luego de implementar todas las funciones)

- Llamando al interprete: `stack ghci` carga el programa en el interprete para que se puede correr allí. Desde esta opción se puede ejecutar manualmente cada función para comprobar si está trabajando como se espera.

- Test: `stack test` ejecuta de forma automatizada los casos de test especificados en `test/Spec.hs`. Si su implementación falla, stack se lo indicará.

## Envío del proyecto: gitHub classroom

Utilizaremos gitHub classroom. Accede al link del trabajo práctico que te enviamos por Classroom y/ó  Slack.  Unite para tener acceso a la actividad. (Si es la primera vez que utilizas GitHub Classroom te pedirá que otorgues permisos para acceder a tu repositorio de GitHub.)

Para trabajar en los archivos del proyecto, es necesario crear una copia local en tu computadora, agregar tu solución en los archivos locales, y luego subir los cambios a gitHub.

* Abre tu terminal o línea de comandos. Elige un directorio de trabajo donde agregarás tu carpeta con el proyecto a editar y ejecuta el siguiente comando, tendrás una copia local del repositorio:

````
git clone <link de tu repositorio>
`````

![git clone](/img/clone.png)

* Una vez clonado, utiliza el siguiente comando para entrar al directorio del proyecto:

````
cd <directorio del repositorio clonado (tu copia local)>
````

* Utiliza tu editor de código favorito (Visual Studio Code, Sublime Text, Atom, etc.) para abrir los archivos del proyecto y realizar los cambios necesarios.

* Git realiza un seguimiento de los cambios que realizas en los archivos. Para registrar estos cambios localmente, utiliza el comando “git add”.

````
git add <nombre-del-archivo>
````

* Cuando esté listo para subir, primero deberás “asegurar tus cambios” con el comando ```commit```. Ete comando toma una “foto instantánea” de tu código y permite que tus cambios queden registrados en tu máquina. Deberás agregarle un mensaje descriptivo que identifique los cambios realizados, por ejemplo:

````
git commit -m “Agrego fn factorizar”
````

Es importante destacar que la operación commit no realiza los cambios en el repositorio remoto (el que está subido en gitHub). La operación commit solamente permite guardar los cambios en tu copia local.

* Para enviar todos tus cambios al repositorio remoto de gitHub, utiliza el comando “git push”

````
git push 
````
NOTA: Si hiciste 5 commits en tu repositorio local, al hacer "git push" se enviaran todos los cambios hechos en esos 5 commits al repositorio remoto. Es decir el push envía TODOS los cambios realizados al repositorio remoto.

![git push](/img/push.png)

* Otros comandos útiles son

```git status```: permite visualizar el estado actual de tu repositorio (archivos modificados, listos para commit, etc).

```git log```: permite ver el historial de commits
