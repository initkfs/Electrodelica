within Electrodelica.Circuits.RC.BandPassFilter;

model BandPassFilter
extends ResistorCapacitorRC;
  import Modelica.Electrical.Analog.Basic.Capacitor;
  import Modelica.Electrical.Analog.Basic.Resistor;
  
  final Modelica.Electrical.Analog.Basic.Resistor R1(R = 200)  annotation(
    Placement(visible = true, transformation(origin = {-44, 26}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  final Modelica.Electrical.Analog.Basic.Capacitor C2(C = 0.00005) annotation(
    Placement(visible = true, transformation(origin = {22, 26}, extent = {{-16, -16}, {16, 16}}, rotation = 180)));
  final Modelica.Electrical.Analog.Basic.Resistor R2(R = 1000) annotation(
    Placement(visible = true, transformation(origin = {58, 8}, extent = {{-18, -18}, {18, 18}}, rotation = -90)));
  final Modelica.Electrical.Analog.Basic.Capacitor C1(C = 0.0001) annotation(
    Placement(visible = true, transformation(origin = {-10, 8}, extent = {{-18, -18}, {18, 18}}, rotation = -90)));
equation
  connect(C2.p, R2.p) annotation(
    Line(points = {{38, 26}, {58, 26}}, color = {0, 0, 255}));
  connect(R2.p, out.p) annotation(
    Line(points = {{58, 26}, {66, 26}, {66, 40}, {76, 40}}, color = {0, 0, 255}));
  connect(C1.p, C2.n) annotation(
    Line(points = {{-10, 26}, {6, 26}}, color = {0, 0, 255}));
  connect(R1.n, C1.p) annotation(
    Line(points = {{-28, 26}, {-10, 26}}, color = {0, 0, 255}));
  connect(G.p, C1.n) annotation(
    Line(points = {{-72, -10}, {-10, -10}}, color = {0, 0, 255}));
  connect(C1.n, R2.n) annotation(
    Line(points = {{-10, -10}, {58, -10}}, color = {0, 0, 255}));
  connect(R2.n, out.n) annotation(
    Line(points = {{58, -10}, {96, -10}, {96, 40}}, color = {0, 0, 255}));
  connect(V1.p, R1.p) annotation(
    Line(points = {{-80, 40}, {-71, 40}, {-71, 26}, {-60, 26}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end BandPassFilter;