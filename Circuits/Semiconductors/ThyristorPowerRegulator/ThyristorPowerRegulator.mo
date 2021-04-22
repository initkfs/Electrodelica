within Electrodelica.Circuits.Semiconductors.ThyristorPowerRegulator;

model ThyristorPowerRegulator
extends Base.SineVoltageAndOut(V1.V = 5);
  Modelica.Electrical.Analog.Semiconductors.Thyristor VD2 annotation(
    Placement(visible = true, transformation(origin = {-2, 4}, extent = {{-12, -12}, {12, 12}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 30000) annotation(
    Placement(visible = true, transformation(origin = {3, -21}, extent = {{-13, -13}, {13, 13}}, rotation = -90)));
  Modelica.Electrical.Analog.Semiconductors.Diode VD1 annotation(
    Placement(visible = true, transformation(origin = {-2, 40}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor load(R = 500)  annotation(
    Placement(visible = true, transformation(origin = {54, 24}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Potentiometer R1(R = 1000) annotation(
    Placement(visible = true, transformation(origin = {0, -52}, extent = {{10, 8}, {-10, -8}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor C1(C = 0.000001) annotation(
    Placement(visible = true, transformation(origin = {-31, -9}, extent = {{13, -13}, {-13, 13}}, rotation = -90)));
equation
  connect(VD2.Gate, R2.p) annotation(
    Line(points = {{-14, -8}, {3, -8}}, color = {0, 0, 255}));
  connect(VD1.p, VD2.Cathode) annotation(
    Line(points = {{-14, 40}, {-14, 4}}, color = {0, 0, 255}));
  connect(V1.p, VD1.p) annotation(
    Line(points = {{-86, 40}, {-14, 40}}, color = {0, 0, 255}));
  connect(VD1.n, load.p) annotation(
    Line(points = {{10, 40}, {54, 40}}, color = {0, 0, 255}));
  connect(G.p, load.n) annotation(
    Line(points = {{-72, -10}, {-58, -10}, {-58, -60}, {54, -60}, {54, 8}}, color = {0, 0, 255}));
  connect(load.n, out.n) annotation(
    Line(points = {{54, 8}, {96, 8}, {96, 40}}, color = {0, 0, 255}));
  connect(load.p, out.p) annotation(
    Line(points = {{54, 40}, {76, 40}}, color = {0, 0, 255}));
  connect(VD1.n, VD2.Anode) annotation(
    Line(points = {{10, 40}, {10, 4}}, color = {0, 0, 255}));
  connect(VD2.Anode, R1.pin_p) annotation(
    Line(points = {{10, 4}, {10, -52}}, color = {0, 0, 255}));
  connect(R2.n, R1.contact) annotation(
    Line(points = {{3, -34}, {-10, -34}, {-10, -44}}, color = {0, 0, 255}));
  connect(C1.n, R1.pin_n) annotation(
    Line(points = {{-31, 4}, {-42, 4}, {-42, -52}, {-10, -52}}, color = {0, 0, 255}));
  connect(VD2.Gate, C1.p) annotation(
    Line(points = {{-14, -8}, {-24, -8}, {-24, -22}, {-31, -22}}, color = {0, 0, 255}));
  connect(C1.n, VD2.Cathode) annotation(
    Line(points = {{-31, 4}, {-14, 4}}, color = {0, 0, 255}));
  annotation(
    Documentation(info = "author: initkfs, 2021."));
end ThyristorPowerRegulator;
