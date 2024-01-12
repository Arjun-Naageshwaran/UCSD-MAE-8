vector = [n1, n2, n3, n4, n5];
modvec(vector);

function v = modvec(a)
v=sum(a);
if (v<7)
    disp(a)
end
if (v>=7 && v<20)
    if (a.*1>=4)
            a.*0.5;
    end
end
if (v>20)
    disp(0);
end
end