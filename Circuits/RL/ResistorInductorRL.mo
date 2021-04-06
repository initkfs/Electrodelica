within Electrodelica.Circuits.RL;

model ResistorInductorRL
extends Base.PulseVoltageAndOut;
  annotation(
    Documentation(info = "author: initkfs, 2021."));

  import Modelica.Units.SI;
  parameter SI.Voltage voltage = 5;
  parameter SI.Resistance resistance = 100;
  parameter SI.Inductance inductance = 0.0005;
  
end ResistorInductorRL;
