module sum1bcc (A, B, Ci,Cout,S);

// Se crean las variables de entrada y salida
  input  A;
  input  B;
  input  Ci;
  output Cout;
  output S;
  
// Creación el registro de 2 bits el cual guardara el resultado de la suma
  reg [1:0] st;
  
// Se asigan las variables de salida a su respectiva posicion del registro
  assign S = st[0];
  assign Cout = st[1];
  
  
// Aqui se suman las variables de entrada y se guarda el resultado en el registro
  always @ ( * ) begin
  	st  = 	A+B+Ci;
  end
  
endmodule