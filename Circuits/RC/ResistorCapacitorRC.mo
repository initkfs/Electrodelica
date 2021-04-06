within Electrodelica.Circuits.RC;

model ResistorCapacitorRC
  annotation(
    Documentation(info = "author: initkfs, 2021."));

  import Modelica.Units.SI;
  parameter SI.Voltage voltage = 5;
  parameter SI.Resistance resistance = 1500;
  parameter SI.Capacitance capacitance = 0.00001 "10µF";
  
end ResistorCapacitorRC;