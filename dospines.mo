package dospines
  connector pinpositivo
    Modelica.SIunits.Voltage v "Electric Potential";
    flow Modelica.SIunits.Current i "Current Flow";
  annotation(
      Icon(graphics = {Ellipse(origin = {-2, -3}, lineColor = {85, 170, 127}, fillColor = {85, 170, 127}, fillPattern = FillPattern.Solid, extent = {{-18, 23}, {22, -17}}, endAngle = 360)}));
  end pinpositivo;

  connector pinnegativo
  Modelica.SIunits.Voltage v "Electric Potential";
        flow Modelica.SIunits.Current i "Current Flow";
  annotation(
      Icon(graphics = {Ellipse(fillPattern = FillPattern.Solid, extent = {{-20, 20}, {20, -20}}, endAngle = 360)}));
  end pinnegativo;


  partial model pines_dos
    Modelica.SIunits.Voltage v;
      Modelica.SIunits.Current i;
        pinpositivo p ;
        pinnegativo n ;
  dospines.pinnegativo pinnegativo1 annotation(
      Placement(visible = true, transformation(origin = {-22, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  dospines.pinpositivo pinpositivo1 annotation(
      Placement(visible = true, transformation(origin = {22, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      v = p.v - n.v;
      0 = p.i + n.i;
      i = p.i;
  annotation(
      Icon(graphics = {Rectangle(origin = {-1, -1}, extent = {{-19, 11}, {21, -11}})}));
  
  end pines_dos;






end dospines;
