function [C] = elastFxn(C0,varargin)

numargs = length(varargin);
checkInputs = zeros(numargs,1);
for i = 1:numargs
    checkInputs(i) = ischar(varargin{i}) | isstring(varargin{i});
end
locInputTypes = find(checkInputs)

if length(locInputTypes) > 1
    squareTermCheck = zeros(length(locInputTypes),1);
    for i = 1:length(locInputTypes)
        
    end
end

presRun = strcmp(varargin,'PEffect')
tempRun = strcmp(varargin,'TEffect')
varargin
% C = C0;

if sum(presRun)
    C = C0 + C0P.*P;
elseif length(varargin) == 2
    C = C0 + C0P.*P + C0T.*T;
end