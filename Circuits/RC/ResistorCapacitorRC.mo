within Electrodelica.Circuits.RC;

model ResistorCapacitorRC
extends Base.PulseVoltageAndOut;
  annotation(
    Documentation(info = "author: initkfs, 2021."));

  import Modelica.Units.SI;
  parameter SI.Resistance resistance = 1500;
  parameter SI.Capacitance capacitance = 0.00001 "10µF";
  
end ResistorCapacitorRC;