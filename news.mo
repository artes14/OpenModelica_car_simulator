model news
  Modelica.Blocks.Sources.Constant Accel(k = -1)  annotation(
    Placement(visible = true, transformation(origin = {-84, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Gearbox gearbox(Ratio = 1)  annotation(
    Placement(visible = true, transformation(origin = {-2, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Wheel wheel annotation(
    Placement(visible = true, transformation(origin = {38, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TwoWheelVehicle twoWheelVehicle annotation(
    Placement(visible = true, transformation(origin = {83, 13}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant SteerAngle(k = 0.2)  annotation(
    Placement(visible = true, transformation(origin = {40, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Engine engine annotation(
    Placement(visible = true, transformation(origin = {-42, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant Brake(k = 0)  annotation(
    Placement(visible = true, transformation(origin = {-84, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(gearbox.T2, wheel.T) annotation(
    Line(points = {{9, 20}, {9, 19}, {26, 19}, {26, 20}}, color = {0, 0, 127}));
  connect(wheel.F, twoWheelVehicle.F) annotation(
    Line(points = {{49, 20}, {70, 20}}, color = {0, 0, 127}));
  connect(engine.Te, gearbox.T1) annotation(
    Line(points = {{-30, 21}, {-15, 21}, {-15, 20}, {-14, 20}}, color = {0, 0, 127}));
  connect(wheel.Tref, gearbox.T2ref) annotation(
    Line(points = {{27, 12}, {10, 12}}, color = {0, 0, 127}));
  connect(gearbox.T1ref, engine.Tref) annotation(
    Line(points = {{-13, 12}, {-30, 12}}, color = {0, 0, 127}));
  connect(SteerAngle.y, twoWheelVehicle.SteerAngle) annotation(
    Line(points = {{51, -22}, {70, -22}, {70, 4}}, color = {0, 0, 127}));
  connect(Accel.y, engine.accel) annotation(
    Line(points = {{-73, 30}, {-54, 30}, {-54, 21}}, color = {0, 0, 127}));
  connect(Brake.y, engine.Brake) annotation(
    Line(points = {{-73, -6}, {-54, -6}, {-54, 12}}, color = {0, 0, 127}));
  connect(wheel.Fref, twoWheelVehicle.Fout) annotation(
    Line(points = {{50, 12}, {71, 12}}, color = {0, 0, 127}));
protected
  annotation(
    uses(Modelica(version = "4.0.0")));
end news;
