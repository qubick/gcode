(*  on 2014/03/21 16:35:14 (-0600) *)
(**** start.gcode for Replicator 2, single head ****)
M73 P2 (display progress)
M103 (disable RPM)
M73 P5 (display progress)
M73 P0 (enable build progress)

G21 (set units to mm)
G90 (set positioning to absolute)

(**** begin homing x,y to the most inner corner, z to base****)
G162 X Y F2500 (home XY axes maximum
(G162 Z F1100 (home Z axis minimum)
(**** end homing ****)

(*** click home button of iphone )
G92 X0 Y0 Z0


G1 Z-110 F2300(set gap to 30mm between nozzle and base)

G1 X-175 Y-25 F2300
G1 Z-137

G1 X-165 F1800 (drag one stylus)
G1 Z-110

G4 P300

G1 X-170 Y-50 Z-130 (center?)


G1 X0 Y0 Z0 (home to absolute 0)

M72 P1  ( Play Ta-Da song )
