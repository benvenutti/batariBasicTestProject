 dim backgroundColor = a

 const noscore = 1

MAIN_LOOP
  COLUBK = backgroundColor
  drawscreen
  backgroundColor = backgroundColor + 1
  goto MAIN_LOOP
