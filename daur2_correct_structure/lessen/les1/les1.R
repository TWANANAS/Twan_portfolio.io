# Load the Rsubread package
library('Rsubread')

# Create variable with location of reference genome
hg38_ref <- "$HOME/daur2/hg38_genome/GRCh38.primary_assembly.genome.fa"

# Create variable with basename of index files
hg38_index <- "$HOME/daur2/hg38_index/hg38_index"

# Build index (default paramaters)
buildindex(basename = hg38_index,
           reference = hg38_ref,
           gappedIndex = FALSE,
           indexSplit = FALSE)
