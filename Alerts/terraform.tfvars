
alert_conditions = {
  orders = {
     name   = "Orders"

  enabled   = true
 
  option                   =  "static"
   Fillvalue                = 1.0
  query =  "SELECT count(*) AS 'orders' FROM Transaction WHERE appName='foodme-mine'"
  
  thresholdW =  2.0
   operatorC = "above"
  operatorW =  "above"
  
  thresholdC =  3.0
  durationC = 300
  durationW = 300
 
}
Disk= {
     name   = "localdiskC"

  enabled   = true
 
  option                   =  "static"
   Fillvalue                = 1.0
  query = " SELECT average(diskUsedPercent) FROM StorageSample WHERE hostname = 'DESKTOP-PNVDQC8' AND device = 'C:'"
  
  thresholdW =  2.0
   operatorC = "above"
  operatorW =  "above"
  
  thresholdC =  3.0
  durationC = 300
  durationW = 300
 
}
}