within Electrodelica.Circuits.RC;

model ConstantVoltageRC
  extends Electrodelica.Circuits.RC.ResistorCapacitorRC;
  import Modelica.Electrical.Analog.Sources.ConstantVoltage;
  import Modelica.Electrical.Analog.Basic.Ground;
  import Modelica.Electrical.Analog.Interfaces.PositivePin;
  
  final Modelica.Electrical.Analog.Sources.ConstantVoltage V1(V = voltage) annotation(
    Placement(visible = true, transformation(origin = {-65, 15}, extent = {{-25, 25}, {25, -25}}, rotation = -90)));
  final Modelica.Electrical.Analog.Basic.Ground G annotation(
    Placement(visible = true, transformation(origin = {-58, -24}, extent = {{-14, 14}, {14, -14}}, rotation = 180)));
  final Modelica.Electrical.Analog.Interfaces.PositivePin outputVoltage annotation(
    Placement(visible = true, transformation(origin = {83, 39}, extent = {{-25, -25}, {25, 25}}, rotation = 0), iconTransformation(origin = {48, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(V1.n, G.p) annotation(
    Line(points = {{-65, -10}, {-58, -10}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end ConstantVoltageRC;