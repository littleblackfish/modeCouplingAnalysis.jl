# modeCouplingAnalysis

This is a julia framework to perform mode coupling analysis as described in this (http://arxiv.org/pdf/1310.8598.pdf) paper. 

It was designed to provide an infrastructure for possible implementations of other analyses on protein dynamics. 

# protein type

This is a type that keeps a MD trajectory for a protein. Some pre-processing is necessary on the original trajectory.

## preprocessing of trajectory

- Use your preffered MD trajectory tool (I use vmd)
  - We will only use alpha carbons (name CA) so you should generate a trimmed down version of your trajectory. This will also result in a much smaller file that is easier to process.
  - You should also align the trajectory. in VMD, this is done by RMSD trajectory tool
  - Save the aligned trajectory of CA atoms in xyz format (traj.xyz). This is a plain text format that is easy to parse.
- Use preprocess.awk script included here
  - It parses xyz format trajectory file and generates a matrix formatted plaintext. 
  - 
