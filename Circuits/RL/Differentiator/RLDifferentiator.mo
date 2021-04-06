within Electrodelica.Circuits.RL.Differentiator;

model RLDifferentiator
  extends ResistorInductorRL;
  import Modelica.Electrical.Analog.Basic.Capacitor;
  import Modelica.Electrical.Analog.Basic.Resistor;
  final Modelica.Electrical.Analog.Basic.Resistor R1(R = resistance) annotation(
    Placement(visible = true, transformation(origin = {-14, 40}, extent = {{-20, 20}, {20, -20}}, rotation = 0)));
  final Modelica.Electrical.Analog.Basic.Inductor L1(L = inductance)  annotation(
    Placement(visible = true, transformation(origin = {45, 15}, extent = {{-25, -25}, {25, 25}}, rotation = -90)));
equation
  connect(G.p, L1.n) annotation(
    Line(points = {{-72, -10}, {46, -10}}, color = {0, 0, 255}));
  connect(L1.n, out.n) annotation(
    Line(points = {{46, -10}, {96, -10}, {96, 40}}, color = {0, 0, 255}));
  connect(R1.n, L1.p) annotation(
    Line(points = {{6, 40}, {46, 40}}, color = {0, 0, 255}));
  connect(L1.p, out.p) annotation(
    Line(points = {{46, 40}, {76, 40}}, color = {0, 0, 255}));
  connect(V1.p, R1.p) annotation(
    Line(points = {{-80, 40}, {-34, 40}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end RLDifferentiator;