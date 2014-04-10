(*  on 2014/03/21 16:35:14 (-0600) *)
(**** start.gcode for Replicator 2, single head ****)
M73 P2 (display progress)
M103 (disable RPM)
M73 P5 (display progress)
M73 P0 (enable build progress)

G21 (set units to mm)
G90 (set positioning to absolute)

(**** begin homing x,y to the most inner corner, z to base****)
G162 X Y F2500 (home XY axes maximum)
(G162 Z F1100 (home Z axis minimum)
(**** end homing ****)

(*** click home button of iphone )
G92 X0 Y0 Z0


G1 Z-80 F2300(set gap to 30mm between nozzle and base)

G1 X-140 Y-20 F2300
G1 Z-110 (click diamond)
G1 Z-80 (restore zero point)

G1 X-110
G1 Z-110 (click star)
G1 Z-80

G1 X-90 Y-55 F2300
G1 Z-110 (click heart)
G1 Z-80

G1 X-50
G1 Z-115 (click '=')
G1 z-80


(**** begin homing x,y to the most inner corner, z to base****)
(G162 X Y F2500 (home XY axes maximum)
(G162 Z F1100 (home Z axis minimum)
(**** end homing ****)

G1 X0 Y0 Z0 (home to absolute 0)

M72 P1  ( Play Ta-Da song )
