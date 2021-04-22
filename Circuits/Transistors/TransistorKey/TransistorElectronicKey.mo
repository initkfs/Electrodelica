within Electrodelica.Circuits.Transistors.TransistorKey;

model TransistorElectronicKey
extends Base.PulseVoltageAndOut;
 parameter Real loadCurrentA = 0.5;
 final parameter Real loadResistanceOhm = V1.V / loadCurrentA;
 
 parameter Real TransistorSaturationCoefficient = 3;
 final parameter Real BaseCurrentA = TransistorSaturationCoefficient * (loadCurrentA / T1.Bf);
 final parameter Real BaseResistanceOhm = V1.V / BaseCurrentA;
 final parameter Real ProtectionResistanceOhm = BaseResistanceOhm * 10;

 Modelica.Electrical.Analog.Semiconductors.NPN T1(Bf = 300, useHeatPort = false, useTemperatureDependency = false)  annotation(
    Placement(visible = true, transformation(origin = {0, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
 Modelica.Electrical.Analog.Sensors.CurrentSensor CollectorCurrentSensorA annotation(
    Placement(visible = true, transformation(origin = {56, 52}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
 Modelica.Electrical.Analog.Sensors.CurrentSensor BaseCurrentSensorA annotation(
    Placement(visible = true, transformation(origin = {-20, 56}, extent = {{-8, -8}, {8, 8}}, rotation = -90)));
 Modelica.Electrical.Analog.Basic.Resistor R1B(R = BaseResistanceOhm)  annotation(
    Placement(visible = true, transformation(origin = {-64, 64}, extent = {{-16, -16}, {16, 16}}, rotation = 180)));
 Modelica.Electrical.Analog.Basic.Resistor Load(R = loadResistanceOhm)  annotation(
    Placement(visible = true, transformation(origin = {31, 77}, extent = {{-15, -15}, {15, 15}}, rotation = -90)));
 Modelica.Electrical.Analog.Basic.Resistor R2Protect(R = ProtectionResistanceOhm, T(displayUnit = "K") , useHeatPort = false)  annotation(
    Placement(visible = true, transformation(origin = {-20, 6}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
equation
  connect(G.p, R2Protect.n) annotation(
    Line(points = {{-72, -10}, {-20, -10}}, color = {0, 0, 255}));
  connect(R2Protect.n, T1.E) annotation(
    Line(points = {{-20, -10}, {20, -10}, {20, 28}}, color = {0, 0, 255}));
  connect(T1.E, out.n) annotation(
    Line(points = {{20, 28}, {96, 28}, {96, 40}}, color = {0, 0, 255}));
  connect(R1B.p, BaseCurrentSensorA.p) annotation(
    Line(points = {{-48, 64}, {-20, 64}}, color = {0, 0, 255}));
  connect(BaseCurrentSensorA.n, T1.B) annotation(
    Line(points = {{-20, 48}, {-20, 40}}, color = {0, 0, 255}));
  connect(T1.B, R2Protect.p) annotation(
    Line(points = {{-20, 40}, {-20, 22}}, color = {0, 0, 255}));
  connect(R1B.n, V1.p) annotation(
    Line(points = {{-80, 64}, {-80, 40}}, color = {0, 0, 255}));
  connect(Load.n, CollectorCurrentSensorA.p) annotation(
    Line(points = {{31, 62}, {56, 62}}, color = {0, 0, 255}));
  connect(CollectorCurrentSensorA.n, T1.C) annotation(
    Line(points = {{56, 42}, {38, 42}, {38, 52}, {20, 52}}, color = {0, 0, 255}));
  connect(R1B.n, Load.p) annotation(
    Line(points = {{-80, 64}, {-80, 92}, {31, 92}}, color = {0, 0, 255}));
  connect(Load.p, out.p) annotation(
    Line(points = {{31, 92}, {76, 92}, {76, 40}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end TransistorElectronicKey;