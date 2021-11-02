within Electrodelica.Circuits.Semiconductors.PeakDetector;

model PeakDetector
  extends Base.SineVoltageAndOut(V1.V = 5);
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 1000) annotation(
    Placement(visible = true, transformation(origin = {-46, 40}, extent = {{-16, -16}, {16, 16}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Capacitor C1(C = 1e-7) annotation(
    Placement(visible = true, transformation(origin = {49, 25}, extent = {{-15, -15}, {15, 15}}, rotation = -90)));
  Modelica.Electrical.Analog.Semiconductors.Diode2 D1 annotation(
    Placement(visible = true, transformation(origin = {4, 40}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
equation
  connect(V1.p, resistor.n) annotation(
    Line(points = {{-86, 40}, {-62, 40}}, color = {0, 0, 255}));
  connect(resistor.p, D1.p) annotation(
    Line(points = {{-30, 40}, {-12, 40}}, color = {0, 0, 255}));
  connect(D1.n, C1.p) annotation(
    Line(points = {{20, 40}, {50, 40}}, color = {0, 0, 255}));
  connect(C1.p, out.p) annotation(
    Line(points = {{50, 40}, {76, 40}}, color = {0, 0, 255}));
  connect(G.p, C1.n) annotation(
    Line(points = {{-72, -10}, {50, -10}, {50, 10}}, color = {0, 0, 255}));
  connect(C1.n, out.n) annotation(
    Line(points = {{50, 10}, {96, 10}, {96, 40}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end PeakDetector;