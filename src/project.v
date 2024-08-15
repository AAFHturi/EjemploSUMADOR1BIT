module SUMADOR(
input A,
  input B,
  input C_IN,
  output SUMA, C_OUT );
  
  wire s1, c1, s2;
  // instance
  C_XOR U1(.OUT(s1),    .A(A),  .B(B)); // es la compuerta 1 
  C_AND U2(.OUT(c1),    .A(A),  .B(B)); // la sintaxis es salida entrada entrada
  C_XOR U3(.OUT(SUMA),  .A(s1), .B(C_IN));
  C_AND U4(.OUT(s2),    .A(s1), .B(C_IN));
  C_XOR U5(.OUT(C_OUT), .A(s2), .B(c1));
    
endmodule
