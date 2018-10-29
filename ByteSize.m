
% FUNCTION NAME:
%   ByteSize
%
% DESCRIPTION:
%   Compute m emnory requirement of a matrix
%
% INPUT:
%   size_array - array of dimensions of matrix e.g. [200 200 200]
%   for a 200x200x200 matrix
%   iscomplex - is the matrix complex valued - 0 or 1
%   dtype - data type of matrix - 'single', 'double', 'uint16', 'uint8'
%
% OUTPUT:
%   [size_in_gb, size_in_mb, size_in_kb] - size in gb, mb, and kb of matrix
%
% REVISION HISTORY:
%   10/27/2018 - waleedt
%       * Initial implementation

 function [bytesize_gb,bytesize_mb,bytesize_kb] = bytesize(size_array,...
     iscomplex,dtype)

if (iscomplex)
    num_elements = prod(size_array) * 2;
else
    num_elements = prod(size_array);
end

switch dtype
    case 'single'
        bytesize = 4 * num_elements;
    case 'double'
        bytesize = 8 * num_elements;
    case 'uint16'
        bytesize = 2 * num_elements;
    case 'uint8'
        bytesize = 1 * num_elements;
end

bytesize_gb = bytesize / (1024^3);
bytesize_mb = bytesize / (1024^2);
bytesize_kb = bytesize / (1024);

 end