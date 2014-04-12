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


G1 Z-110 F2300(set gap to 30mm between nozzle and base)

G1 X-50 Y-25 F2300
G1 Z-132 (click E)
G1 Z-110

G1 X-30 Y0 
G1 Z-132 (click G)
G1 Z-110

G1 Z-132
G1 Z-110


G1 X-10 Y-45
G1 Z-132
G1 Z-110 (change keyboard type)

G1 X-30 Y5
G1 Z-132 (click won)
G1 Z-110

G4 P300 (wait)

G1 X-45 Y10 (move to dollar)
G1 Z-132
G1 Z-110

(type number???)

G1 X0 Y0 Z0 (home to absolute 0)
