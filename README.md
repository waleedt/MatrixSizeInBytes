FUNCTION NAME:

  ByteSize

DESCRIPTION:

  Compute m emnory requirement of a matrix

INPUT:

  size_array - array of dimensions of matrix e.g. [200 200 200]
  for a 200x200x200 matrix
  iscomplex - is the matrix complex valued - 0 or 1
  dtype - data type of matrix - 'single', 'double', 'uint16', 'uint8'

OUTPUT:

  size_in_mb, size_in_gb - size in mb and gb of matrix
