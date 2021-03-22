# lab01- sumador 
laboratorio 01 introducción a HDL

Tizzian Santiago Montana Saavedra

NOTA: los códigos y los archivos de la simulación se encuentran en la carpeta sol_lab_00

## Diferencia entre sum1bcc y sum1bcc_primitive

La diferencia radica en el modo de calcular la suma, vemos que en sum1bcc se vale de la función de suma para la operación, además de una registro para guardar este valor luego de calcularlo. En el caso de sum1bcc_primitive se tiene una serie de puertas lógicas las cuales nos dan la suma, esta configuración de puertas lógicas se obtiene del análisis de la tabla de verdad, tambien en este caso el valor de la suma no se guarda en ningun lado.

NOTA: se realizaron los respectivos comentarios en los códigos, explicando que hace cada parte del código.

## Simulación sumador de un bit

Simulando sum1bcc queda:

![image](https://user-images.githubusercontent.com/80001669/111889959-1d614f80-89b3-11eb-817e-4afda658b61f.png)

Simulando sum1bcc_primitive queda:

![image](https://user-images.githubusercontent.com/80001669/111890259-bdb87380-89b5-11eb-98b5-69093d5d96cf.png)

Como se observa en ambas simulaciones, las dos formas de crear el sumador de un bit nos dan el mismo resultado, además el resultado de la suma es correcta, por lo tanto dando por válidas las implementaciones del sumador.

## Simulación sumador de 4 bits

Aquí se simula el código sum4bcc.v con el testbench.v, quedando de la siguiente manera

https://user-images.githubusercontent.com/80001669/111891557-0bd37400-89c2-11eb-9e98-db49dda80c2f.mp4

Como se observa en el video, con todas las combinaciones posibles de entradas el sumador nos da el resultado correcto.

Es de notar en el diseño del sumador de 4 bits, que este es la conexión de cuatro sumadores Full-Adder de 1 bit, como se muestra a continuación:

![image](https://user-images.githubusercontent.com/80001669/112009148-2443ab80-8af4-11eb-8a07-a9c56ada5839.png)

Vemos que los cables c1, c2 y c3, conectan las salidas y entradas del acarreo de los sumadores de 1 bit s0, s1, s2 y s3. Esto se puede realizar cuantas veces se desee para hacer un sumador de n bits. Así mismo se pueden colocar en cascada los sumadores de n bits, haciendo más fácil la implementación de sumadores de muchos bits

## Conclusión

Los sumadores se pueden implementar de varias maneras, o en varias escalas de integración, esto se ve en los dos casos del sumador de 1 bit; uno esta construido con operaciones lógicas básicas, mientras que el otro esta usando registros y la función suma.

La funcionalidad de un modelo puede ser extendida mediante la repetición de este y su correcta interconexión, en este caso lo vemos en el sumador de 4 bits que no es más que cuatro sumadores de 1 bit en cascada.
