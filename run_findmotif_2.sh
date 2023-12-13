#!/bin/bash

#PBS -N findmotif_2
#PBS -l walltime=24:00:00
#PBS -l nodes=1:ppn=4,mem=12gb
#PBS -m bea
#PBS -M Xiang.Liu@moffitt.org

export PROJECT_DIR="/share/lab_teng/xiangliu/homer_motif"
export FASTA="$PROJECT_DIR/fasta/opc.chipseq.fa"
export OUT_DIR="$PROJECT_DIR/opc_motif"

cd $PROJECT_DIR

~/homer/bin/findMotifs.pl $FASTA fasta $OUT_DIR
