var
  a, b, c, d, x1, x2: real;

begin
  writeln('Enter the coefficients a, b, c ');
  read(a,b,c);
  if a <> 0 then
  begin
    if b >= 0 then
    begin
      if c >= 0 then  
      begin
        writeln('Your equation is: ', a, 'x²+', b, 'x+', c, '=0');
      end
      else
  begin
        writeln('Your equation is: ', a, 'x²+', b, 'x', c, '=0'); 
      end; 
    end
    else
  begin
      if c >= 0 then
      begin
        writeln('Your equation is: ', a, 'x²', b, 'x+', c, '=0');   
      end
      else
      begin
        writeln('Your equation is: ', a, 'x²', b, 'x', c, '=0');
      end;
    end;
    d := b * b - 4 * a * c;
    if d >= 0 then
    begin
      d := sqrt(d);
      if d > 0 then
      begin
        x1 := ((-1) * b + d) / (2 * a);
        x2 := ((-1) * b - d) / (2 * a);
        write('X1 = ', x1, ' X2 = ', x2);
      end
      else
      begin
        x2 := (-1) * b * b / 2 * a;
        write('Since the discriminant is zero, so X = ', x2);
      end;
    end
    else
      write('Since the discriminant is less than zero, there is Х = ∅');
  end
  else
    writeln('The coefficient a cannot be zero')
end.
