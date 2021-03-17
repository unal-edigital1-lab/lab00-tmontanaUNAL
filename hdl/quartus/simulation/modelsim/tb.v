
`timescale 1ns / 1ns
module tb  ; 
 
  reg    Ci   ; 
  reg    A   ; 
  reg    B   ; 
  wire    S   ; 
  wire    Cout   ; 
  sum1bcc  
   DUT  ( 
       .Ci (Ci ) ,
      .A (A ) ,
      .B (B ) ,
      .S (S ) ,
      .Cout (Cout ) ); 



// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  initial
  begin
   repeat(10)
   begin
	   A  = 1'b1  ;
	  #50  A  = 1'b0  ;
	  #50 ;
// 1 us, repeat pattern in loop.
   end
  end


// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 1 us, Period = 200 ns
  initial
  begin
   repeat(5)
   begin
	   B  = 1'b1  ;
	  #100  B  = 1'b0  ;
	  #100 ;
// 1 us, repeat pattern in loop.
   end
  end


// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 1 us, Period = 400 ns
  initial
  begin
   repeat(2)
   begin
	   Ci  = 1'b1  ;
	  #200  Ci  = 1'b0  ;
	  #200 ;
// 800 ns, repeat pattern in loop.
   end
	  Ci  = 1'b1  ;
	 # 200 ;
// dumped values till 1 us
  end

  initial
	#2000 $stop;
endmodule
