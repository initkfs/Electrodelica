within Electrodelica.Circuits.RL.Integrator;

model RLIntegrator
  extends ResistorInductorRL;
  import Modelica.Electrical.Analog.Basic.Capacitor;
  import Modelica.Electrical.Analog.Basic.Resistor;
  final Modelica.Electrical.Analog.Basic.Resistor R1(R = resistance) annotation(
    Placement(visible = true, transformation(origin = {41, 15}, extent = {{-25, 25}, {25, -25}}, rotation = -90)));
  final Modelica.Electrical.Analog.Basic.Inductor L1(L = inductance)  annotation(
    Placement(visible = true, transformation(origin = {-16, 40}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
equation
  connect(G.p, R1.n) annotation(
    Line(points = {{-72, -10}, {42, -10}}, color = {0, 0, 255}));
  connect(R1.n, out.n) annotation(
    Line(points = {{42, -10}, {96, -10}, {96, 40}}, color = {0, 0, 255}));
  connect(V1.p, L1.p) annotation(
    Line(points = {{-80, 40}, {-42, 40}}, color = {0, 0, 255}));
  connect(L1.n, R1.p) annotation(
    Line(points = {{10, 40}, {42, 40}}, color = {0, 0, 255}));
  connect(R1.p, out.p) annotation(
    Line(points = {{42, 40}, {76, 40}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end RLIntegrator;