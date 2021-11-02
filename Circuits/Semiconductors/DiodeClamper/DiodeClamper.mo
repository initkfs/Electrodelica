within Electrodelica.Circuits.Semiconductors.DiodeClamper;

model DiodeClamper
  extends Base.SineVoltageAndOut(V1.V = 5);
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 1000) annotation(
    Placement(visible = true, transformation(origin = {-46, 40}, extent = {{-16, -16}, {16, 16}}, rotation = 180)));
  Modelica.Electrical.Analog.Semiconductors.Diode2 D1 annotation(
    Placement(visible = true, transformation(origin = {-7, 15}, extent = {{-25, -25}, {25, 25}}, rotation = -90)));
  Modelica.Electrical.Analog.Semiconductors.Diode2 D2 annotation(
    Placement(visible = true, transformation(origin = {49, 15}, extent = {{-25, -25}, {25, 25}}, rotation = 90)));
equation
  connect(V1.p, R1.n) annotation(
    Line(points = {{-86, 40}, {-62, 40}}, color = {0, 0, 255}));
  connect(R1.p, D1.p) annotation(
    Line(points = {{-30, 40}, {-7, 40}}, color = {0, 0, 255}));
  connect(D1.p, D2.n) annotation(
    Line(points = {{-7, 40}, {49, 40}}, color = {0, 0, 255}));
  connect(D2.n, out.p) annotation(
    Line(points = {{49, 40}, {76, 40}}, color = {0, 0, 255}));
  connect(G.p, D1.n) annotation(
    Line(points = {{-72, -10}, {-7, -10}}, color = {0, 0, 255}));
  connect(D1.n, D2.p) annotation(
    Line(points = {{-7, -10}, {49, -10}}, color = {0, 0, 255}));
  connect(D2.p, out.n) annotation(
    Line(points = {{49, -10}, {96, -10}, {96, 40}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end DiodeClamper;