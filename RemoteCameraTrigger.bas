'IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
'IIIIIIIIIIIIIII         REMOTE CAMERA TRIGGER             IIIIIIIIIIII
'IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
' CODE 303
'
'-----------------------------------------------------------------------
' THEMA: REMOTE CAMERS TRIGGER
'        USING THE REMOTE CONTROL INPUT OF THE CAMERA
'-----------------------------------------------------------------------
' 
'

'--------------------------
'------ I/O PORTS ---------
'--------------------------
define LED           port[5]
define CAMERAFOCUS   port[1]
define CAMERATRIGGER port[2]
define INPUTPOTI     port[6]
'--------------------------
'---- SYSTEM MEMORY -------
'--------------------------
define INTERVAL      byte[1]

'Initialisieren
#START
  LED=OFF
  CAMERAFOCUS=OFF
  CAMERATRIGGER=OFF
  goto LOOP

#LOOP
  'Interval festlegen (hier noch hart codiert, soll durch Poti verändert werden)
  INTERVAL=100
  
  'Warten -- pause: Vielfaches von 20ms (pause 100 = 100*20ms = 2s)
  pause INTERVAL
  LED=ON
  CAMERAFOCUS=ON
  CAMERATRIGGER=ON
  'Auslöser für 10 * 20ms = 200ms offen halten
  pause 10

  'Auslöser loslassen
  LED=OFF
  CAMERAFOCUS=OFF
  CAMERATRIGGER=OFF

goto LOOP
