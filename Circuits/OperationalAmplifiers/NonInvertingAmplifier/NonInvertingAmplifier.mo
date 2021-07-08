within Electrodelica.Circuits.OperationalAmplifiers.NonInvertingAmplifier;

model NonInvertingAmplifier
  
  final parameter Real SignalGainValue = 1 + (R2.R / R1.R);

  Modelica.Electrical.Analog.Basic.Ground G1 annotation(
    Placement(visible = true, transformation(origin = {-65, -15}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor out annotation(
    Placement(visible = true, transformation(origin = {82, 36}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 10000)  annotation(
    Placement(visible = true, transformation(origin = {51, -39}, extent = {{-17, -17}, {17, 17}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 90000)  annotation(
    Placement(visible = true, transformation(origin = {51, 9}, extent = {{-17, -17}, {17, 17}}, rotation = 90)));
  Modelica.Electrical.Analog.Ideal.IdealOpAmp3Pin opAmp annotation(
    Placement(visible = true, transformation(origin = {18, 36}, extent = {{-26, 26}, {26, -26}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SineVoltage V1(V = 5, f = 50)  annotation(
    Placement(visible = true, transformation(origin = {-83, 26}, extent = {{-27, -28}, {27, 28}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor Rcomp(R = (R1.R * R2.R) / (R1.R + R2.R)) annotation(
    Placement(visible = true, transformation(origin = {-43, 53}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
equation
  connect(opAmp.out, out.p) annotation(
    Line(points = {{44, 36}, {70, 36}}, color = {0, 0, 255}));
  connect(R2.p, R1.n) annotation(
    Line(points = {{51, -8}, {51, -22}}, color = {0, 0, 255}));
  connect(opAmp.in_n, R2.p) annotation(
    Line(points = {{-8, 20}, {-8, -8}, {51, -8}}, color = {0, 0, 255}));
  connect(G1.p, R1.p) annotation(
    Line(points = {{-65, -2}, {-54, -2}, {-54, -56}, {51, -56}}, color = {0, 0, 255}));
  connect(R1.p, out.n) annotation(
    Line(points = {{51, -56}, {94, -56}, {94, 36}}, color = {0, 0, 255}));
  connect(opAmp.out, R2.n) annotation(
    Line(points = {{44, 36}, {44, 31}, {51, 31}, {51, 26}}, color = {0, 0, 255}));
  connect(V1.p, Rcomp.p) annotation(
    Line(points = {{-83, 53}, {-60, 53}}, color = {0, 0, 255}));
  connect(Rcomp.n, opAmp.in_p) annotation(
    Line(points = {{-26, 53}, {-8, 53}, {-8, 52}}, color = {0, 0, 255}));
  connect(V1.n, G1.p) annotation(
    Line(points = {{-82, -2}, {-65, -2}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end NonInvertingAmplifier;