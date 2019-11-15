##!/bin/bash -login 

#PBS -l walltime=05:10:00
#PBS -l nodes=1:ppn=10
#PBS -l mem=50gb
#PBS -A colej
#PBS -M wuruona1@msu.edu
#PBS -m abe
#PBS -N CasY_hmmsearch_blast_of_job
#PBS -e /mnt/scratch/wuruona1/BlastDB/casY_hmmsearch.err
#PBS -o /mnt/scratch/wuruona1/BlastDB/casY_hmmsearch.log
cd /mnt/research/rdp/private/wuruona1/Cas1HMM/Cas1SecondTry/cas1/gene_resource/new_CasY/originaldata 
module load HMMER
export BLASTDB=/mnt/scratch/wuruona1/BlastDB/:$BLASTDB
hmmsearch /mnt/research/rdp/private/wuruona1/Cas1HMM/Cas1SecondTry/cas1/gene_resource/new_CasY/originaldata/new_CasY.hmm $BLASTDB
