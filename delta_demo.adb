pragma Ada_2022;

package body Delta_Demo is

   function Move_XY (P : Point; DX, DY : Float) return Point is
   begin
      return (P with delta X => P.X + DX, Y => P.Y + DY);
   end Move_XY;

   function Recolor (C : Color; R, G, B : Natural) return Color is
   begin
      return (C with delta R => R, G => G, B => B);
   end Recolor;

   function With_Alpha (C : Color; A : Natural) return Color is
   begin
      return (C with delta A => A);
   end With_Alpha;

   function Set_Index (V : Vec; Index : Integer; Value : Integer) return Vec is
   begin
      return [V with delta Index => Value];
   end Set_Index;

   function Set_Ends (V : Vec; First, Last : Integer) return Vec is
   begin
      return [V with delta 1 => First, V'Last => Last];
   end Set_Ends;

end Delta_Demo;
