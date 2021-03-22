# lab01- sumador 
laboratorio 01 introducción a HDL

Tizzian Santiago Montana Saavedra

NOTA: los codigos y los archivos de la simulacion se encuentran en la carpeta sol_lab_00

## Diferencia entre sum1bcc y sum1bcc_primitive

La diferencia radica en el modo de calcular la suma, vemos que en sum1bcc se vale de la funcion de suma para la operacion, ademas de una registro para guardar este valor luego de calcularlo. En el caso de sum1bcc_primitive se tiene una serie de puertas logicas las cuales nos dan la suma, esta configuracion de puertas logicas se obtiene del analisis de la tabla de verdad, tambien en este caso el valor de la suma no se guarda en ningun lado.

NOTA: se realizaron los respectivos comentarios en los codigos, explicando que hace cada parte del codigo.

## Simulación sumador de un bit

Simulando sum1bcc queda:

![image](https://user-images.githubusercontent.com/80001669/111889959-1d614f80-89b3-11eb-817e-4afda658b61f.png)

Simulando sum1bcc_primitive queda:

![image](https://user-images.githubusercontent.com/80001669/111890259-bdb87380-89b5-11eb-98b5-69093d5d96cf.png)

Como se observa en ambas simulaciones, las dos formas de crear el sumador de un bit nos dan el mismo resultado, ademas el resultado de la suma es correcta, por lo tanto dando por validas las implementaciones del sumador.

## Simulación sumador de 4 bits

Aqui se simula el codigo sum4bcc.v con el testbench.v, quedando de la siguiente manera

https://user-images.githubusercontent.com/80001669/111891557-0bd37400-89c2-11eb-9e98-db49dda80c2f.mp4

Como se observa en el video, con todas las combinaciones posibles de entradas el sumador nos da el resultado correcto.

Es de notar en el diseño del sumador de 4 bits, que este es la conexión de cuatro sumadores Full-Adder de 1 bit, como se muestra acontinuación:

![image](https://user-images.githubusercontent.com/80001669/112009148-2443ab80-8af4-11eb-8a07-a9c56ada5839.png)

Vemos que los cables c1, c2 y c3, conectan las salidas y entradas del acarreo de los sumadores de 1 bit s0, s1, s2 y s3. Esto se puede realizar cuantas veces se desee para hacer un sumador de n bits. Así mismo se pueden colocar en cascada los sumadores de n bits, haciendo mas fácil la implementación de sumadores de muchos bits
