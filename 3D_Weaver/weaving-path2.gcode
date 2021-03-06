(** This GCode was generated by ReplicatorG 0040 **)
(*  using Skeinforge (50)  
(*  for a Single headed Replicator 2  *)
(*  on 2014/07/16 15:13:36 (-0600) 
(**** start.gcode for Replicator 2, single head ****)
M73 P2
M103
M73 P0 (enable build progress)

G21 (set units to mm)
G90 (set positioning to absolute)


(**** begin homing ****)
G162 X Y Z F2500 (home XY axes maximum)
G92 X0 Y0 Z0 (set current position on axes)
(**** end homing ****)

(**** end of start.gcode ****)
M73 P71 (display progress)
G1 Z-50 F2300
G1 X-300 
G1 Y-115
G4 P1000 (wait after weaving home)

G1 X-200
G1 Y-100
G1 X-300
G1 Y-85
G1 X-200
G1 Y-70
G1 X-300
G1 Y-55
G1 X-200
G1 Y-40
G1 X-300
(******* End.gcode*******)


M73 P100 ( End  build progress )
(G0 Z150 ( Send Z axis to bottom of machine )
G1 X0 Y0 Z0 (home to absolute 0)
(*********end End.gcode*******)
