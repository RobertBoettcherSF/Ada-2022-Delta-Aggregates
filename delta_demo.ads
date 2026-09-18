--  Ada 2022 topic: delta aggregates (record + array).
pragma Ada_2022;

package Delta_Demo is

   type Point is record
      X, Y, Z : Float := 0.0;
   end record;

   type Color is record
      R, G, B : Natural := 0;
      A       : Natural := 255;
   end record;

   type Vec is array (1 .. 5) of Integer;

   function Move_XY (P : Point; DX, DY : Float) return Point;
   function Recolor (C : Color; R, G, B : Natural) return Color;
   function With_Alpha (C : Color; A : Natural) return Color;

   function Set_Index (V : Vec; Index : Integer; Value : Integer) return Vec
     with Pre => Index in V'Range;

   function Set_Ends (V : Vec; First, Last : Integer) return Vec;

end Delta_Demo;
