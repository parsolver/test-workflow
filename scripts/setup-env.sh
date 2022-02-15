source /opt/spack/share/spack/setup-env.sh

spack load googletest
spack load mpich
spack load hdf5
spack load metis
spack load parmetis
spack load clhep
spack load intel-mkl
spack load hypre

export METIS_DIR=`spack find -p metis | grep -P "/opt/spack.*" -o`
export HYPRE_DIR=`spack find -p hypre | grep -P "/opt/spack.*" -o`
export sleef_DIR=/opt/sleef/cmake-install
export CPATH=$CPATH:$METIS_DIR/include
