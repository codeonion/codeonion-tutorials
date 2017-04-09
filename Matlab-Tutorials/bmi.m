heightInch = 63.5;

bmix = [15 16 17 18 19 20 21 22 23 24 25];
height = heightInch  / 39.372;

for xbmi = 25
    idealWeight = bmix* height^2;
    result = [bmix; idealWeight]

end;