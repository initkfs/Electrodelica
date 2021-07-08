within Electrodelica.Circuits.OperationalAmplifiers.InvertingAmplifier;

model InvertingAmplifier
  
  final parameter Real SignalGainValue = -(R2.R / R1.R);

  Modelica.Electrical.Analog.Basic.Ground G1 annotation(
    Placement(visible = true, transformation(origin = {-67, -29}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor out annotation(
    Placement(visible = true, transformation(origin = {82, 34}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 10000)  annotation(
    Placement(visible = true, transformation(origin = {-39, 49}, extent = {{-17, -17}, {17, 17}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 90000)  annotation(
    Placement(visible = true, transformation(origin = {-5, 83}, extent = {{-17, -17}, {17, 17}}, rotation = 180)));
  Modelica.Electrical.Analog.Ideal.IdealOpAmp3Pin opAmp annotation(
    Placement(visible = true, transformation(origin = {18, 34}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor Rcomp(R = (R1.R * R2.R) / (R1.R + R2.R)) annotation(
    Placement(visible = true, transformation(origin = {-27, 1}, extent = {{-17, -17}, {17, 17}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.SineVoltage V1(V = 5, f = 50) annotation(
    Placement(visible = true, transformation(origin = {-83, 26}, extent = {{-27, -28}, {27, 28}}, rotation = -90)));
equation
  connect(V1.n, G1.p) annotation(
    Line(points = {{-82, -2}, {-73.5, -2}, {-73.5, -16}, {-67, -16}}, color = {0, 0, 255}));
  connect(G1.p, Rcomp.n) annotation(
    Line(points = {{-66, -16}, {-27, -16}}, color = {0, 0, 255}));
  connect(Rcomp.p, opAmp.in_p) annotation(
    Line(points = {{-26, 18}, {-8, 18}}, color = {0, 0, 255}));
  connect(R1.p, opAmp.in_n) annotation(
    Line(points = {{-22, 50}, {-8, 50}}, color = {0, 0, 255}));
  connect(V1.p, R1.n) annotation(
    Line(points = {{-82, 54}, {-68, 54}, {-68, 50}, {-56, 50}}, color = {0, 0, 255}));
  connect(R2.n, R1.p) annotation(
    Line(points = {{-22, 84}, {-22, 50}}, color = {0, 0, 255}));
  connect(R2.p, opAmp.out) annotation(
    Line(points = {{12, 84}, {44, 84}, {44, 34}}, color = {0, 0, 255}));
  connect(opAmp.out, out.p) annotation(
    Line(points = {{44, 34}, {70, 34}}, color = {0, 0, 255}));
  connect(Rcomp.n, out.n) annotation(
    Line(points = {{-26, -16}, {94, -16}, {94, 34}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end InvertingAmplifier;