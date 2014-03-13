Some useful G-Codes are:

G0 - Rapid Motion
G1 - Coordinated Motion
G2 - Arc - Clockwise
G3 - Arc - Counter Clockwise
G4 - Dwell
G10 - Create Coordinate System Offset from the Absolute one
G17 - Select XY plane (default)
G18 - Select XZ plane (not implemented)
G19 - Select YX plane (not implemented)
G20 - Inches as units
G21 - Millimeters as units
G28 - Home given Axes to maximum
G30 - Go Home via Intermediate Point (not implemented)
G31 - Single probe (not implemented)
G32 - Probe area (not implemented)
G53 - Set absolute coordinate system
G54-G59 - Use coordinate system from G10 P0-5
G90 - Absolute Positioning
G91 - Relative Positioning
G92 - Define current position on axes
G94 - Feed rate mode (not implemented)
G97 - Spindle speed rate
G161 - Home negative
G162 - Home positive
G-Codes can have all kinds of arguments. Only a few of those are actually used here:

X absolute position
Y absolute position
Z absolute position
A position (rotary around X)
B position (rotary around Y)
C position (rotary around Z)
U Relative axis parallel to X
V Relative axis parallel to Y
W Relative axis parallel to Z
M code (another "action" register or Machine code(*)) (otherwise referred to as a "Miscellaneous" function")
F feed rate
S spindle speed
N line number
R Arc radius or optional word passed to a subprogram/canned cycle
P Dwell time or optional word passed to a subprogram/canned cycle
T Tool selection
I Arc data X axis
J Arc data Y axis.
K Arc data Z axis, or optional word passed to a subprogram/canned cycle
D Cutter diameter/radius offset
H Tool length offset
Examples

G1 X5 Y-5 Z6 F3300.0 (Move to postion <x,y,z>=<5,-5,6> at speed 3300.0)
G21 (set units to mm)
G90 (set positioning to absolute)
G92 X0 Y0 Z0 (set current position to <x,y,z>=<0,0,0>)