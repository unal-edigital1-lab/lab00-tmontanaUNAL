# lab01- sumador 
laboratorio 01 introducción a HDL

Tizzian Santiago Montana Saavedra

NOTA: los codigos y lor archivos de la simulacion se encuentran en la carpeta sol_lab_00

## Diferencia entre sum1bcc y sum1bcc_primitive

La diferencia radica en el modo de calcular la suma, vemos que en sum1bcc se vale de la funcion de suma para la operacion, ademas de una registro para guardar este valor luego de calcularlo. En el caso de sum1bcc_primitive se tiene una serie de puertas logicas las cuales nos dan la suma, esta configuracion de puertas logicas se obtiene del analisis de la tabla de verdad, tambien en este caso el valor de la suma no se guarda en ningun lado.

NOTA: se realizaron los respectivos comentarios en los codigos, explicando que hace cada parte del codigo.

## Simulación sumador de un bit

Simulando sum1bcc queda:

![image](https://user-images.githubusercontent.com/80001669/111889959-1d614f80-89b3-11eb-817e-4afda658b61f.png)

Simulando sum1bcc_primitive queda:

![image](https://user-images.githubusercontent.com/80001669/111890220-703c0680-89b5-11eb-88b8-8706fe3bfce5.png)
