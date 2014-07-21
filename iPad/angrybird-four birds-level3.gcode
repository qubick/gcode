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

G92 X0 Y0 Z0


G1 Z-110 F2300(set gap to 30mm between nozzle and base)

G1 X-75 Y-40 F2300
G1 Z-132 (clicking)
G1 X-65 Y-30 F1800 (drgging)
G1 Z-110
G4 P12000 (wait 1000 milliseconds)

G1 X-75 Y-40 F2300
G1 Z-132 (clicking)
G1 X-60 Y-30 F1800 (drgging)
G1 Z-110
G4 P12000 

G1 X-75 Y-40 F2300
G1 Z-132 (clicking)
G1 X-55 Y-30 F1800 (drgging)
G1 Z-110
G4 P12000 (wait 10 seconds)

G1 X-75 Y-40 F2300
G1 Z-132 (clicking)
G1 X-60 Y-35 F1800 
G1 Z-110
G4 P30000

(**** begin homing x,y to the most inner corner, z to base****)
(G162 X Y F2500 (home XY axes maximum)
(G162 Z F1100 (home Z axis minimum)
(**** end homing ****)

G1 X0 Y0 Z0 (homming to absolute 0)

M72 P1  ( Play Ta-Da song )
