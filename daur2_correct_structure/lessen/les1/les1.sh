#in terminal 
conda create -n rnaseq sra-tools
conda activate rnaseq

#met fastq-dump kunnen fastq files gedownload worden van de GEO/SRA doormiddel van SRA identifiers
fastq-dump --split-3 --outdir '/home/anna.vandonkersgoed/daur2/rnaseq_airway/fastq/.' --gzip SRR1039508

#bash for-do loop
for id in $(cat "daur2/SRA_identifiers.txt")
do 
fastq-dump --split-3 --outdir 'home/anna.vandonersgoed/daur2/rnaseq_airway/fastq/SRA_identifiers.txt' --ggzip $SSR
done

#Met fastqc kan de kwaliteit van de data worden beoordeeld
fastqc --outdir /home/anna.vandonkersgoed/daur2/rnaseq_airway/fastqc_output /home/anna.vandonkersgoed/daur2/rnaseq_airway/fastq/*.fastq.gz
fastqc --help

# Perform fastqc analysis
#fastqc [-o output dir] [--(no)extract] [-f fastq|bam|sam] 
           [-c contaminant file] seqfile1 .. seqfileN
fastqc --outdir /home/anna.vandonkersgoed/daur2/rnaseq_airway/fastqc_output /home/anna.vandonersgoed/daur2/rnaseq_airway/fastq/*.fastq.gz

cd /home/daur2/rnaseq/rnaseq_airway/fastqc_output/
ll

cd 

wget -P './hg38_genome/' https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_39/GRCh38.primary_assembly.genome.fa.gz

# Unzip the reference genome
gunzip $HOME/daur2/hg38_genome/*.fa.gz
