pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Delta_Demo; use Delta_Demo;

procedure Tests is
   P : constant Point := (X => 1.0, Y => 2.0, Z => 3.0);
   Q : Point;
   C : constant Color := (R => 10, G => 20, B => 30, A => 255);
   D : Color;
   V : constant Vec := [1, 2, 3, 4, 5];
   W : Vec;
begin
   Q := Move_XY (P, 0.5, -1.0);
   Assert (abs (Q.X - 1.5) < 1.0E-5);
   Assert (abs (Q.Y - 1.0) < 1.0E-5);
   Assert (abs (Q.Z - 3.0) < 1.0E-5);
   Put_Line ("PASS record delta Move_XY (Z unchanged)");

   D := Recolor (C, 1, 2, 3);
   Assert (D.R = 1 and then D.G = 2 and then D.B = 3 and then D.A = 255);
   D := With_Alpha (D, 128);
   Assert (D.A = 128);
   Put_Line ("PASS multi- and single-component record delta");

   W := Set_Index (V, 3, 99);
   Assert (W = Vec'[1, 2, 99, 4, 5]);
   W := Set_Ends (V, 7, 8);
   Assert (W = Vec'[7, 2, 3, 4, 8]);
   Put_Line ("PASS array delta aggregates");

   Put_Line ("All Delta Aggregates topic tests passed.");
end Tests;
