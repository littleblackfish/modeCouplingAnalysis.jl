#!/usr/bin/gawk -f

# script to convert xyz format trajectory to a matrix
# each row is a snapshot, each column is a DoF
# 3 consecutive DoFs belong to a single residue

	{
		if (NR == 1 ) {
			natoms=$1
		}
		if ((NR-1) % (natoms+2) > 1 ){
			printf ("%f %f %f ", $2, $3, $4)
		}
		if ((NR-1) % (natoms+2) == natoms+1) {
			printf ("\n")
		}
	}
