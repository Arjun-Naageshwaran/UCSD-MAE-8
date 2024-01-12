vector=[n1, n2, n3, n4, n5];
modvec(vector)

function a = modvec(v)
a=sum(v)
if (a<7)
    disp(a);
end
if (a>=7 && a<20)
    if(v.*1>=4)
        v.*0.5;
    end
    if(v.*1<4)
        disp(v);
    end
    if(v.*1>20)
        disp(0);
    end
end
end