; Configuration file for Duet WiFi (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.4 on Tue Sep 01 2020 15:50:36 GMT+0200 (Středoevropský letní čas)

; General preferences
G90                                            ; send absolute coordinates...
M83                                            ; ...but relative extruder moves
M550 P"Tombear"                                ; set printer name

; Network
M551 P"reprap"                                 ; set password
M552 S1                                        ; enable network
M586 P0 S1                                     ; enable HTTP
M586 P1 S0                                     ; disable FTP
M586 P2 S0                                     ; disable Telnet

; Drives
M569 P0 S1                                     ; physical drive 0 goes forwards
M569 P1 S1                                     ; physical drive 1 goes forwards
M569 P2 S1                                     ; physical drive 2 goes forwards
M569 P3 S1                                     ; physical drive 3 goes forwards
M584 X0 Y1 Z2 E3                               ; set drive mapping
M350 E256 I0                                   ; configure microstepping without interpolation
M350 X16 Y16 Z16 I1                            ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z2560.00 E420.00             ; set steps per mm
M566 X900.00 Y900.00 Z12.00 E120.00            ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z180.00 E1200.00        ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z20.00 E250.00            ; set accelerations (mm/s^2)
M906 X400 Y400 Z800 E800 I30                   ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                        ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                               ; set axis minima
M208 X220 Y220 Z200 S0                         ; set axis maxima

; Endstops
M574 X2 S3                                     ; configure sensorless endstop for high end on X
M574 Y1 S3                                     ; configure sensorless endstop for low end on Y
M574 Z2 S3                                     ; configure sensorless endstop for high end on Z

; Stall detection
M915 X Y R0 F0

; Z-Probe
M950 S0 C"exp.heater3"                         ; create servo pin 0 for BLTouch
M558 P9 C"^zprobe.in" H5 F120 T6000            ; set Z probe type to bltouch and the dive height + speeds
G31 P500 X-25 Y12 Z2.5                            ; set Z probe trigger value, offset and trigger height
M557 X15:240 Y15:230 S20                       ; define mesh grid

; Heaters
M308 S0 P"bedtemp" Y"thermistor" T100000 B4138 ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bedheat" T0                          ; create bed heater output on bedheat and map it to sensor 0
M307 H0 B1 S1.00                               ; enable bang-bang mode for the bed heater and set PWM limit
M140 H0                                        ; map heated bed to heater 0
M143 H0 S120                                   ; set temperature limit for heater 0 to 120C
M308 S1 P"e0temp" Y"thermistor" T100000 B4138  ; configure sensor 1 as thermistor on pin e1temp
M950 H1 C"e0heat" T1                           ; create nozzle heater output on e0heat and map it to sensor 1
M307 H1 B0 S1.00                               ; disable bang-bang mode for heater  and set PWM limit

; Fans
M950 F0 C"fan0" Q500                           ; create fan 0 on pin fan0 and set its frequency
M106 P0 C"Nozzle fan" S0 H-1                   ; set fan 0 name and value. Thermostatic control is turned off

; Tools
M563 P0 S"Hotend" D0 H1 F0                     ; define tool 0
G10 P0 X0 Y0 Z0                                ; set tool 0 axis offsets
G10 P0 R0 S0                                   ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
T0                                             ; select first tool

