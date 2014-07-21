(***  gcode sample for Makerbot ***)
(*** Mar 13th, 2014, Sikuli Lab ***)

G92 X0 Y0 Z0 	(*** set current position to <x,y,z>=<0,0,0> ***)
G90 		(*** set positioning to absolute ***)
G1 X0 y0 z5 F2300.0	(*** set gap between building platform and the nozzle ***)

G1 X-20 Y30 Z10 F2300.0 (*** move to positoin <x,y,z> = <10, -20, 10> at speed 3300.0 ***)
G1 X-20 Y30 Z20
G1 X-20 Y30 Z10 F2300.0 (*** move to positoin <x,y,z> = <5, -5, 6> at speed 3300.0 ***)
