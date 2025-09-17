#!/bin/bash
(
  echo -e "Residue_i\tResidue_j\tDistance"
  awk '
    $1=="CA" && $2=="ALA" && $3=="A" {
      res[++n]=$4; x[n]=$5; y[n]=$6; z[n]=$7
    }
    END {
      for(i=1;i<=n;i++){
        for(j=i+1;j<=n;j++){
          dx=x[i]-x[j]; dy=y[i]-y[j]; dz=z[i]-z[j]
          dist=sqrt(dx*dx+dy*dy+dz*dz)
          printf "%d\t%d\t%.3f\n", res[i], res[j], dist
        }
      }
    }
  ' alanine_info.pdb
)
