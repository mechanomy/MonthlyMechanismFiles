model ViseHammer
  /* Modeling Fireball Tool's swinging vise hammer as described at https://mechanomy.com/posts/230116_viseHammer
   * (C) Mechanomy LLC 2023, released under MIT.
  */
  constant Boolean framesOn = false;
  constant Real planeOpacity = 1;

  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(visible = true, transformation(origin = {-80, 50}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(n = {0, 0, 1}, phi(fixed = true, start = -1.570796326794897), useAxisFlange = true) annotation(
    Placement(visible = true, transformation(origin = {-40, 50}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  inner Visualization.UpdateVisualization updateVisualization(animateExtern = true, displayEffects = true, displayFlowElements = true, displayHUDElements = true, displayMultiBodyStructure = true, displayVisualizers = true, enableCameras = true, enableLights = true) annotation(
    Placement(visible = true, transformation(origin = {-80, 30}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Visualization.Shapes.FileShape pivotArmsShape(color = {100, 100, 100},filename = "W:/sync/mechgits/mechanomyCom/posts/draft_230116_viseHammer/pivotArms_Default_v0.obj", overwriteColor = true, r_shape = {0, 0, 0}, reflectsLight = false, scaleFactor = {.0254, 0.0254, 0.0254}, transparency = 0.3) annotation(
    Placement(visible = true, transformation(origin = {-10, 50}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape pivotArms(I_11 = 0.85, I_22 = 1.72, I_33 = 0.9, animateSphere = false, animation = true, color = {0, 0, 255}, height = 0.3, length = 0.225, lengthDirection = {1, 0, 0}, m = 20.91, r = {0.2667, 0, 0}, r_CM = {0.118872, 0, 0}, r_shape = {0, 0, 0}, shapeType = "box", width = 0.3, widthDirection = {0, 1, 0}) annotation(
    Placement(visible = true, transformation(origin = {-20, 30}, extent = {{-8, 8}, {8, -8}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape shaft(I_11 = 0.099, I_22 = 2.606, I_33 = 2.516, animateSphere = false, animation = true, color = {0, 0, 255}, height = 0.3, length = 0.225, lengthDirection = {1, 0, 0}, m = 10.385, r = {0.9144, 0, 0}, r_CM = {0.310, 0, 0}, r_shape = {0, 0, 0}, shapeType = "box", width = 0.3, widthDirection = {0, 1, 0}) annotation(
    Placement(visible = true, transformation(origin = {20, -40}, extent = {{-8, 8}, {8, -8}}, rotation = -90)));
  Visualization.Shapes.FileShape shaftShape(color = {120, 120, 120},filename = "W:/sync/mechgits/mechanomyCom/posts/draft_230116_viseHammer/shaft_Default_v0.obj", overwriteColor = true, r_shape = {0, 0, 0}, reflectsLight = false, scaleFactor = {0.0254, 0.0254, 0.0254}, transparency = 0.1) annotation(
    Placement(visible = true, transformation(origin = {50, -30}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(n = {0, 0, 1}, phi(displayUnit = "rad", fixed = true, start = 0), useAxisFlange = true) annotation(
    Placement(visible = true, transformation(origin = {10, 0}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Visualization.Shapes.FileShape headShape(color = {110, 70, 70},filename = "W:/sync/mechgits/mechanomyCom/posts/draft_230116_viseHammer/bit_Default_v0.obj", overwriteColor = true, r_shape = {0, 0, 0}, reflectsLight = false, scaleFactor = {0.0254, 0.0254, 0.0254}, transparency = 0.3) annotation(
    Placement(visible = true, transformation(origin = {50, -70}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape head(I_11 = 0.048, I_22 = 0.433, I_33 = 0.433,animateSphere = false, animation = true, color = {0, 0, 255}, height = 0.3, length = 0.225, lengthDirection = {1, 0, 0}, m = 24.381, r = {0.1905, 0, 0}, r_CM = {0.055, 0, 0}, r_shape = {0, 0, 0}, shapeType = "box", width = 0.3, widthDirection = {0, 1, 0}) annotation(
    Placement(visible = true, transformation(origin = {20, -80}, extent = {{-8, 8}, {8, -8}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation Rzp90_2(angle = -90, n = {0, 0, 1}) annotation(
    Placement(visible = true, transformation(origin = {20, -60}, extent = {{-6, -6}, {6, 6}}, rotation = -90)));
  Modelica.Mechanics.Rotational.Components.Damper damper1(d = 1e-1) annotation(
    Placement(visible = true, transformation(origin = {10, 20}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Speed speed(phi(fixed = false, start = 1.570796326794897)) annotation(
    Placement(visible = true, transformation(origin = {-60, 80}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = -10) annotation(
    Placement(visible = true, transformation(origin = {-80, 80}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.IdealGear idealGear(ratio = 60, useSupport = true) annotation(
    Placement(visible = true, transformation(origin = {-40, 80}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.ElastoBacklash2 elastoBacklash(b = 5.934119456780721, c = 1e3, d = 1e3) annotation(
    Placement(visible = true, transformation(origin = {11, 37}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation Rzp901(angle = 0, n = {0, 0, 1}) annotation(
    Placement(visible = true, transformation(origin = {20, -20}, extent = {{-6, -6}, {6, 6}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation alignElastoBacklash(angle = 0, n = {0, 0, 1}) annotation(
    Placement(visible = true, transformation(origin = {-20, 10}, extent = {{-6, -6}, {6, 6}}, rotation = -90)));
  
  Modelica.SIunits.Energy peHead = head.m * head.body.r_0[2];
  Modelica.SIunits.Energy keHead = .5 * head.m * head.body.v_0[1] ^ 2 + .5 * head.m * head.body.v_0[2] ^ 2 + .5 * head.body.I_33 * head.body.w_a[3] ^ 2;
  Modelica.SIunits.Energy keShaft = .5 * shaft.m * shaft.body.v_0[1] ^ 2 + .5 * shaft.m * shaft.body.v_0[2] ^ 2 + .5 * shaft.body.I_33 * shaft.body.w_a[3] ^ 2;
  Modelica.SIunits.Energy keImpact = keHead + keShaft;
  Modelica.SIunits.Length deflection = 1e-3;
  Modelica.SIunits.Force fImpact = keImpact / deflection;
  Real fImpactLbf = fImpact / 4.448;
equation
  connect(world.frame_b, revolute.frame_a) annotation(
    Line(points = {{-74, 50}, {-48, 50}}));
  connect(revolute.frame_b, pivotArms.frame_a) annotation(
    Line(points = {{-32, 50}, {-20, 50}, {-20, 38}}));
  connect(pivotArms.frame_a, pivotArmsShape.frame_a) annotation(
    Line(points = {{-20, 38}, {-20, 50}, {-18, 50}}, color = {95, 95, 95}));
  connect(shaft.frame_a, shaftShape.frame_a) annotation(
    Line(points = {{20, -32}, {20, -30}, {42, -30}}));
  connect(head.frame_a, headShape.frame_a) annotation(
    Line(points = {{20, -72}, {20, -70}, {42, -70}}));
  connect(shaft.frame_b, Rzp90_2.frame_a) annotation(
    Line(points = {{20, -48}, {20, -54}}));
  connect(Rzp90_2.frame_b, head.frame_a) annotation(
    Line(points = {{20, -66}, {20, -72}}));
  connect(revolute1.axis, damper1.flange_b) annotation(
    Line(points = {{10, 8}, {16, 8}, {16, 20}}));
  connect(const.y, speed.w_ref) annotation(
    Line(points = {{-73.4, 80}, {-67.4, 80}}, color = {0, 0, 127}));
  connect(revolute.support, idealGear.support) annotation(
    Line(points = {{-44.8, 58}, {-43.8, 58}, {-43.8, 68}, {-39.8, 68}, {-39.8, 72}}));
  connect(idealGear.flange_b, revolute.axis) annotation(
    Line(points = {{-32, 80}, {-32, 66}, {-40, 66}, {-40, 58}}));
  connect(idealGear.flange_a, speed.flange) annotation(
    Line(points = {{-48, 80}, {-54, 80}}));
  connect(elastoBacklash.flange_a, damper1.flange_a) annotation(
    Line(points = {{4, 37}, {4, 20}}));
  connect(damper1.flange_b, elastoBacklash.flange_b) annotation(
    Line(points = {{16, 20}, {16, 24.5}, {18, 24.5}, {18, 37}}));
  connect(Rzp901.frame_b, shaft.frame_a) annotation(
    Line(points = {{20, -26}, {20, -32}}, color = {95, 95, 95}));
  connect(revolute1.frame_b, Rzp901.frame_a) annotation(
    Line(points = {{18, 0}, {20, 0}, {20, -14}}, color = {95, 95, 95}));
  connect(pivotArms.frame_b, alignElastoBacklash.frame_a) annotation(
    Line(points = {{-20, 22}, {-20, 16}}, color = {95, 95, 95}));
  connect(alignElastoBacklash.frame_b, revolute1.frame_a) annotation(
    Line(points = {{-20, 4}, {-20, 0}, {2, 0}}, color = {95, 95, 95}));
  connect(revolute1.support, damper1.flange_a) annotation(
    Line(points = {{5.2, 8}, {4, 8}, {4, 20}}));
  annotation(
    uses(Modelica(version = "3.2.2"), Visualization(version = "1.5")),
  experiment(StartTime = 0, StopTime = 80, Tolerance = 1e-06, Interval = 0.002),
  __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end ViseHammer;
