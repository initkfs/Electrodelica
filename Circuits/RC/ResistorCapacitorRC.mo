within Electrodelica.Circuits.RC;

model ResistorCapacitorRC
  annotation(
    Documentation(info = "author: initkfs, 2021."));

  import Modelica.Units.SI;
  parameter SI.Voltage voltage = 12;
  parameter SI.Resistance resistance = 1000;
  parameter SI.Capacitance capacitance = 0.0001 "100µF";
  
end ResistorCapacitorRC;