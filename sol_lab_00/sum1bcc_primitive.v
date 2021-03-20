module sum1bcc_primitive (A, B, Ci,Cout,S);

// Se crean las variables de entrada y salida
  input  A;
  input  B;
  input  Ci;
  output Cout;
  output S;

// Creación de los cables, estos concetaran las entradas y salidas de las puertas logicas
  wire a_ab;
  wire x_ab;
  wire cout_t;

// Se declaran las puertas lógicas, el primer parametro es la salida y los siguientes las entradas 
  and(a_ab,A,B);
  xor(x_ab,A,B);

  xor(S,x_ab,Ci);
  and(cout_t,x_ab,Ci);

  or (Cout,cout_t,a_ab);

endmodule