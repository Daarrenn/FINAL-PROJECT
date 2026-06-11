void intro() {
  circle(onex, oney, 80);
  
  //move one
  onex = onex + onevx;
  oney = oney + onevy - grav;
}
