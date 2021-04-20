within Electrodelica.Circuits.Base;

model SineVoltageAndOut
  import Modelica.Electrical.Analog.Sources.PulseVoltage;
  import Modelica.Electrical.Analog.Basic.Ground;
  import Modelica.Electrical.Analog.Sensors.VoltageSensor;
  
  import Modelica.Units.SI;
  parameter SI.Voltage voltage = 5;
  
  final Modelica.Electrical.Analog.Basic.Ground G annotation(
    Placement(visible = true, transformation(origin = {-72, -24}, extent = {{-14, 14}, {14, -14}}, rotation = 180)));
  final VoltageSensor out annotation(
    Placement(visible = true, transformation(origin = {86, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SineVoltage V1(V = 5, f = 50)  annotation(
    Placement(visible = true, transformation(origin = {-86, 15}, extent = {{-25, -24}, {25, 24}}, rotation = -90)));
equation
  connect(V1.n, G.p) annotation(
    Line(points = {{-86, -10}, {-72, -10}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end SineVoltageAndOut;