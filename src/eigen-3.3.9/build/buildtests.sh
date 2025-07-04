#!/bin/bash

if [[ $# != 1 || $1 == *help ]]
then
  echo "usage: $0 regexp"
  echo "  Builds tests matching the regexp."
  echo "  The EIGEN_MAKE_ARGS environment variable allows to pass args to 'make'."
  echo "    For example, to launch 5 concurrent builds, use EIGEN_MAKE_ARGS='-j5'"
  exit 0
fi

TESTSLIST="rand
meta
numext
sizeof
dynalloc
nomalloc
first_aligned
nullary
mixingtypes
packetmath
unalignedassert
vectorization_logic
basicstuff
constructor
linearstructure
integer_types
unalignedcount
exceptions
redux
visitor
block
corners
swap
resize
conservative_resize
product_small
product_large
product_extra
diagonalmatrices
adjoint
diagonal
miscmatrices
commainitializer
smallvectors
mapped_matrix
mapstride
mapstaticmethods
array_cwise
array_for_matrix
array_replicate
array_reverse
ref
is_same_dense
triangular
selfadjoint
product_selfadjoint
product_symm
product_syrk
product_trmv
product_trmm
product_trsolve
product_mmtr
product_notemporary
stable_norm
permutationmatrices
bandmatrix
cholesky
lu
determinant
inverse
qr
qr_colpivoting
qr_fullpivoting
upperbidiagonalization
hessenberg
schur_real
schur_complex
eigensolver_selfadjoint
eigensolver_generic
eigensolver_complex
real_qz
eigensolver_generalized_real
jacobi
jacobisvd
bdcsvd
householder
geo_orthomethods
geo_quaternion
geo_eulerangles
geo_parametrizedline
geo_alignedbox
geo_hyperplane
geo_transformations
geo_homogeneous
stdvector
stdvector_overload
stdlist
stdlist_overload
stddeque
stddeque_overload
sparse_basic
sparse_block
sparse_vector
sparse_product
sparse_ref
sparse_solvers
sparse_permutations
simplicial_cholesky
conjugate_gradient
incomplete_cholesky
bicgstab
lscg
sparselu
sparseqr
umeyama
nesting_ops
zerosized
dontalign
evaluators
sizeoverflow
prec_inverse_4x4
vectorwiseop
special_numbers
rvalue_types
dense_storage
ctorleak
mpl2only
inplace_decomposition
half_float
array_of_string
fastmath
umfpack_support
superlu_support
cholmod_support
spqr_support
boostmultiprec
NonLinearOptimization
NumericalDiff
autodiff_scalar
autodiff
BVH
matrix_exponential
matrix_function
matrix_power
matrix_square_root
alignedvector3
FFT
EulerAngles
sparse_extra
openglsupport
polynomialsolver
polynomialutils
splines
gmres
minres
levenberg_marquardt
kronecker_product
special_functions
cxx11_tensor_dimension
cxx11_tensor_map
cxx11_tensor_assign
cxx11_tensor_comparisons
cxx11_tensor_forced_eval
cxx11_tensor_math
cxx11_tensor_const
cxx11_tensor_intdiv
cxx11_tensor_casts
cxx11_tensor_empty
cxx11_tensor_sugar
cxx11_tensor_roundings
cxx11_tensor_layout_swap
cxx11_tensor_io
cxx11_tensor_uint128
"
targets_to_make=`echo "$TESTSLIST" | egrep "$1" | xargs echo`

if [ -n "${EIGEN_MAKE_ARGS:+x}" ]
then
  /usr/bin/make $targets_to_make ${EIGEN_MAKE_ARGS}
else
  /usr/bin/make $targets_to_make 
fi
exit $?

