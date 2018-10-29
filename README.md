FUNCTION NAME:

  ByteSize

DESCRIPTION:

  Computes memory requirement of a matrix

INPUT:

  size_array - array of dimensions of matrix e.g. [200 200 200]
  for a 200x200x200 matrix
  
  iscomplex - is the matrix complex valued - 0 or 1
  
  dtype - data type of matrix - 'single', 'double', 'uint16', 'uint8'

OUTPUT:

  [size_in_gb, size_in_mb, size_in_kb] - size in gb and mb and kb of matrix
  
EXAMPLE USAGE:

>> ByteSize([300000 196608 3], 0, 'uint16')
