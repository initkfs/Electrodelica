within Electrodelica.Circuits.RC.Integrator;

model RCIntegrator
  extends ResistorCapacitorRC;
  import Modelica.Electrical.Analog.Basic.Capacitor;
  import Modelica.Electrical.Analog.Basic.Resistor;
  final Modelica.Electrical.Analog.Basic.Resistor R1(R = resistance) annotation(
    Placement(visible = true, transformation(origin = {-28, 40}, extent = {{-18, 18}, {18, -18}}, rotation = 0)));
  final Modelica.Electrical.Analog.Basic.Capacitor C1(C = capacitance) annotation(
    Placement(visible = true, transformation(origin = {41, 15}, extent = {{-25, 25}, {25, -25}}, rotation = -90)));
equation
  connect(V1.p, R1.p) annotation(
    Line(points = {{-80, 40}, {-46, 40}}, color = {0, 0, 255}));
  connect(R1.n, C1.p) annotation(
    Line(points = {{-10, 40}, {42, 40}}, color = {0, 0, 255}));
  connect(C1.p, out.p) annotation(
    Line(points = {{42, 40}, {76, 40}}, color = {0, 0, 255}));
  connect(G.p, C1.n) annotation(
    Line(points = {{-72, -10}, {42, -10}}, color = {0, 0, 255}));
  connect(C1.n, out.n) annotation(
    Line(points = {{42, -10}, {96, -10}, {96, 40}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end RCIntegrator;