within Electrodelica.Circuits.RC.BandPassFilter;

model BandPassFilter
  import Modelica.Electrical.Analog.Basic.Capacitor;
  import Modelica.Electrical.Analog.Basic.Resistor;
  
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 200)  annotation(
    Placement(visible = true, transformation(origin = {-46, 40}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground G annotation(
    Placement(visible = true, transformation(origin = {-8, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin out annotation(
    Placement(visible = true, transformation(origin = {80, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {70, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor C2(C = 0.000001) annotation(
    Placement(visible = true, transformation(origin = {22, 40}, extent = {{-16, -16}, {16, 16}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 1000) annotation(
    Placement(visible = true, transformation(origin = {56, 24}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.SineVoltage V1(V = 12, f = 10) annotation(
    Placement(visible = true, transformation(origin = {-82, 18}, extent = {{-22, -20}, {22, 20}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Capacitor C1(C = 0.0000025) annotation(
    Placement(visible = true, transformation(origin = {-8, 22}, extent = {{-18, -18}, {18, 18}}, rotation = -90)));
equation
  connect(C2.p, R2.p) annotation(
    Line(points = {{38, 40}, {56, 40}}, color = {0, 0, 255}));
  connect(G.p, R2.n) annotation(
    Line(points = {{-8, -4}, {56, -4}, {56, 8}}, color = {0, 0, 255}));
  connect(R2.p, out) annotation(
    Line(points = {{56, 40}, {80, 40}}, color = {0, 0, 255}));
  connect(V1.p, R1.p) annotation(
    Line(points = {{-82, 40}, {-62, 40}}, color = {0, 0, 255}));
  connect(V1.n, G.p) annotation(
    Line(points = {{-82, -4}, {-8, -4}}, color = {0, 0, 255}));
  connect(C1.n, G.p) annotation(
    Line(points = {{-8, 4}, {-8, -4}}, color = {0, 0, 255}));
  connect(C1.p, C2.n) annotation(
    Line(points = {{-8, 40}, {6, 40}}, color = {0, 0, 255}));
  connect(R1.n, C1.p) annotation(
    Line(points = {{-30, 40}, {-8, 40}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end BandPassFilter;