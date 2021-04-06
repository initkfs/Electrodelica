within Electrodelica.Circuits.RC;

model PulseVoltageRC
  extends Electrodelica.Circuits.RC.ResistorCapacitorRC;
  import Modelica.Electrical.Analog.Sources.ConstantVoltage;
  import Modelica.Electrical.Analog.Basic.Ground;
  import Modelica.Electrical.Analog.Interfaces.PositivePin;
  final Modelica.Electrical.Analog.Basic.Ground G annotation(
    Placement(visible = true, transformation(origin = {-72, -24}, extent = {{-14, 14}, {14, -14}}, rotation = 180)));
  final Modelica.Electrical.Analog.Sources.PulseVoltage V1(V = voltage, period = 0.1, width = 50)  annotation(
    Placement(visible = true, transformation(origin = {-81, 15}, extent = {{-25, -25}, {25, 25}}, rotation = 270)));
  final Modelica.Electrical.Analog.Sensors.VoltageSensor out annotation(
    Placement(visible = true, transformation(origin = {86, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(V1.n, G.p) annotation(
    Line(points = {{-81, -10}, {-72, -10}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end PulseVoltageRC;
