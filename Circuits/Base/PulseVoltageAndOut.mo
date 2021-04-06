within Electrodelica.Circuits.Base;

model PulseVoltageAndOut
  import Modelica.Electrical.Analog.Sources.PulseVoltage;
  import Modelica.Electrical.Analog.Basic.Ground;
  import Modelica.Electrical.Analog.Sensors.VoltageSensor;
  
  import Modelica.Units.SI;
  parameter SI.Voltage voltage = 5;
  
  final Ground G annotation(
    Placement(visible = true, transformation(origin = {-72, -24}, extent = {{-14, 14}, {14, -14}}, rotation = 180)));
  final PulseVoltage V1(V = voltage, period = 0.1, width = 50)  annotation(
    Placement(visible = true, transformation(origin = {-81, 15}, extent = {{-25, -25}, {25, 25}}, rotation = 270)));
  final VoltageSensor out annotation(
    Placement(visible = true, transformation(origin = {86, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(V1.n, G.p) annotation(
    Line(points = {{-81, -10}, {-72, -10}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end PulseVoltageAndOut;
