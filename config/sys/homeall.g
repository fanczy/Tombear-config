; homeall.g
; called to home all axes
;

; PREPARATION
M400
M913 X70 Y70 ; drop motor current to 70%
M400 
G91; relative positioning
G1 H2 Z5 F12000 ; lift Z relative to current position

; HOME X
G1 H1 X255 F10000 ; move quickly to X axis endstop and stop there (first pass)
G1 H2 X-5 F12000 ; go back a few mm
G1 H1 X255 F7000 ; move slowly to X axis endstop once more (second pass)

; HOME Y
G1 H1 Y-245 F10000 ; move quickly to Y axis endstop and stop there (first pass)
G1 H2 Y5 F12000 ; go back a few mm
G1 H1 Y-245 F7000 ; move slowly to Y axis endstop once more (second pass)

; HOME Z
G90              ; absolute positioning
G1 X50 Y50 F6000 ; go to first probe point
G30              ; home Z by probing the bed

G91             ; relative positioning
G1 Z5 F100      ; lift Z relative to current position

; FINISH
G90 ; absolute positioning
M400
M93 X100 Y100 ; return current to 100%
M400