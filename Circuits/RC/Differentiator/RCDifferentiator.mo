within Electrodelica.Circuits.RC.Differentiator;

model RCDifferentiator
  extends ConstantVoltageRC;
  import Modelica.Electrical.Analog.Basic.Capacitor;
  import Modelica.Electrical.Analog.Basic.Resistor;
  final Modelica.Electrical.Analog.Basic.Capacitor C1(C = capacitance) annotation(
    Placement(visible = true, transformation(origin = {-4, 40}, extent = {{-26, 26}, {26, -26}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = resistance) annotation(
    Placement(visible = true, transformation(origin = {51, 15}, extent = {{-25, 25}, {25, -25}}, rotation = -90)));
equation
  connect(V1.p, C1.p) annotation(
    Line(points = {{-66, 40}, {-30, 40}}, color = {0, 0, 255}));
  connect(C1.n, R1.p) annotation(
    Line(points = {{22, 40}, {51, 40}}, color = {0, 0, 255}));
  connect(R1.p, outputVoltage) annotation(
    Line(points = {{51, 40}, {88, 40}}, color = {0, 0, 255}));
  connect(G.p, R1.n) annotation(
    Line(points = {{-58, -10}, {51, -10}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end RCDifferentiator;