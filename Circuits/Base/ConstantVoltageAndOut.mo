within Electrodelica.Circuits.Base;

model ConstantVoltageAndOut
  import Modelica.Electrical.Analog.Sources.PulseVoltage;
  import Modelica.Electrical.Analog.Basic.Ground;
  import Modelica.Electrical.Analog.Sensors.VoltageSensor;
  
  import Modelica.Units.SI;
  parameter SI.Voltage voltage = 5;
  
  final Modelica.Electrical.Analog.Basic.Ground G annotation(
    Placement(visible = true, transformation(origin = {-72, -24}, extent = {{-14, 14}, {14, -14}}, rotation = 180)));
  final VoltageSensor out annotation(
    Placement(visible = true, transformation(origin = {86, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage V1(V = voltage)  annotation(
    Placement(visible = true, transformation(origin = {-83, 15}, extent = {{-25, -25}, {25, 25}}, rotation = -90)));
equation
  connect(V1.n, G.p) annotation(
    Line(points = {{-84, -10}, {-72, -10}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end ConstantVoltageAndOut;