within Electrodelica.Circuits.LC;

model LCseriesNearResonantFrequency
extends Base.SineVoltageAndOut(V1.f = 300, V1.V = 5);
  annotation(
    Documentation(info = "author: initkfs, 2021."));
  import Modelica.Electrical.Analog.Basic.Capacitor;
  import Modelica.Electrical.Analog.Basic.Resistor;
  import Modelica.Constants.pi;
  
  parameter Real ResonantFrequencyHz = 1 / (2 * pi * sqrt(L1.L * C1.C));
  
  Modelica.Electrical.Analog.Basic.Inductor L1(L = 0.0001) annotation(
    Placement(visible = true, transformation(origin = {-50, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor C1(C = 0.001) annotation(
    Placement(visible = true, transformation(origin = {-2, 40}, extent = {{20, -20}, {-20, 20}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 1)  annotation(
    Placement(visible = true, transformation(origin = {68, 24}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.CurrentSensor outCurrent annotation(
    Placement(visible = true, transformation(origin = {40, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(V1.p, L1.p) annotation(
    Line(points = {{-86, 40}, {-70, 40}}, color = {0, 0, 255}));
  connect(L1.n, C1.p) annotation(
    Line(points = {{-30, 40}, {-22, 40}}, color = {0, 0, 255}));
  connect(G.p, R1.n) annotation(
    Line(points = {{-72, -10}, {68, -10}, {68, 8}}, color = {0, 0, 255}));
  connect(R1.n, out.n) annotation(
    Line(points = {{68, 8}, {96, 8}, {96, 40}}, color = {0, 0, 255}));
  connect(R1.p, out.p) annotation(
    Line(points = {{68, 40}, {76, 40}}, color = {0, 0, 255}));
  connect(C1.n, outCurrent.p) annotation(
    Line(points = {{18, 40}, {30, 40}}, color = {0, 0, 255}));
  connect(outCurrent.n, R1.p) annotation(
    Line(points = {{50, 40}, {68, 40}}, color = {0, 0, 255}));
end LCseriesNearResonantFrequency;