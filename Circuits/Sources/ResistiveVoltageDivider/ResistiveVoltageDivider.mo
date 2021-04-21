within Electrodelica.Circuits.Sources.ResistiveVoltageDivider;

model ResistiveVoltageDivider
extends Base.ConstantVoltageAndOut;
  
  parameter Real R1ValueOhm = 1000;
  parameter Real R2ValueOhm = 1941;
  parameter Real LoadR3ValueOhm = 300000;
  final parameter Real LoadR3CurrentA = V1.V / LoadR3ValueOhm;
  
  final parameter Real DividerOut1 = V1.V * (R1.R / (R1.R + R2.R));
  final parameter Real DividerOut2 = V1.V * (R2.R / (R1.R + R2.R));
  final parameter Real DividerFullResistanceOhm = R1.R + R2.R;
  final parameter Real DividerFullCurrentA = V1.V / DividerFullResistanceOhm;
  
  final parameter Real dividerStabilityFactor = 100;
  final parameter Real DividerResistanceLimit = LoadR3ValueOhm / dividerStabilityFactor;
    
  Modelica.Electrical.Analog.Basic.Resistor R1(R = R1ValueOhm)  annotation(
    Placement(visible = true, transformation(origin = {-5, 39}, extent = {{-21, -21}, {21, 21}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = R2ValueOhm)  annotation(
    Placement(visible = true, transformation(origin = {-5, -39}, extent = {{-21, -21}, {21, 21}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor loadR3(R = LoadR3ValueOhm)  annotation(
    Placement(visible = true, transformation(origin = {49, -21}, extent = {{-21, -21}, {21, 21}}, rotation = -90)));

algorithm
  if DividerFullResistanceOhm > DividerResistanceLimit then
  Modelica.Utilities.Streams.error("Load resistance must be much more than the total divisor resistance");
  end if;

equation
  connect(R2.p, R1.n) annotation(
    Line(points = {{-5, -18}, {-5, 18}}, color = {0, 0, 255}));
  connect(V1.p, R1.p) annotation(
    Line(points = {{-84, 40}, {-40, 40}, {-40, 60}, {-5, 60}}, color = {0, 0, 255}));
  connect(G.p, R2.n) annotation(
    Line(points = {{-72, -10}, {-42, -10}, {-42, -60}, {-5, -60}}, color = {0, 0, 255}));
  connect(R2.p, loadR3.p) annotation(
    Line(points = {{-5, -18}, {22.5, -18}, {22.5, 0}, {49, 0}}, color = {0, 0, 255}));
  connect(loadR3.p, out.p) annotation(
    Line(points = {{49, 0}, {64, 0}, {64, 40}, {76, 40}}, color = {0, 0, 255}));
  connect(R2.n, loadR3.n) annotation(
    Line(points = {{-5, -60}, {23, -60}, {23, -42}, {49, -42}}, color = {0, 0, 255}));
  connect(loadR3.n, out.n) annotation(
    Line(points = {{49, -42}, {96, -42}, {96, 40}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end ResistiveVoltageDivider;