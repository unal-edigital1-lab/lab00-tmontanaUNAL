
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
	  A  = 1'b0  ;
	 # 50 ;
// 50 ns, single loop till start period.
   repeat(9)
   begin
	   A  = 1'b1  ;
	  #50  A  = 1'b0  ;
	  #50 ;
// 950 ns, repeat pattern in loop.
   end
	  A  = 1'b1  ;
	 # 50 ;
// dumped values till 1 us
  end


// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  initial
  begin
	  B  = 1'b1  ;
	 # 1000 ;
// dumped values till 1 us
  end


// "Constant Pattern"
// Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  initial
  begin
	  Ci  = 1'b0  ;
	 # 1000 ;
// dumped values till 1 us
  end

  initial
	#2000 $stop;
endmodule
