; run-once.g
; called after config.g. When it has been executed, it is automatically deleted!
;
; generated by RepRapFirmware Configuration Tool v3.1.4 on Tue Sep 01 2020 15:50:36 GMT+0200 (Středoevropský letní čas)
M552 S0                   ; disable network
G4 P500                   ; wait half a second
M552 S1                   ; enable network
G4 P1000                  ; wait a second
M587 S"hadej" P"nebhotep" ; configure WiFi
M552 S1                   ; enable network

