clear, close all

A = readtable('3925-G01-HREBSD-LargeGrain_normalClean_Data.txt');

parfor i = 1:height(A)
    row = A{i,:};
    B = zeros(1,11);
    if row(1) ~= 0 && row(1) ~= 1
        B(1) = 0;
        B(2) = row(2);
        B(3) = row(3);
        B(4) = 0;
        B(5) = row(5);
        B(6) = 0;
        B(7) = 0;
        B(8) = 0;
        B(9) = 0;
        B(10) = row(10);
        B(11) = row(11);
        A{i,:} = B;
    end
end

writetable(A,'3925-G01-HREBSD-LargeGrain_JustFo.txt','Delimiter','tab');