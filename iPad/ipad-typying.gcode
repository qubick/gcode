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


G1 Z-85 F2300(set gap to 30mm between nozzle and base)

G1 X-100 Y-115 F2300
G1 Z-95 (click E)
G1 Z-85

G1 X-143 Y-100 
G1 Z-95 (click G)
G1 Z-85

G1 Z-95
G1 Z-85


G1 X-80 Y-70
G1 Z-95
G1 Z-85 (change keyboard type)

G1 X-163 Y-100
G1 Z-95 (click won)

G4 P400 (wait)

G1 X-170 Y-105 (move to dollar)
G1 Z-85

(type number???)

G1 X0 Y0 Z0 (home to absolute 0)
