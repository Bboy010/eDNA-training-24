#!/bin/bash

# Activer l'environnement Conda
conda activate eDNA-training-24

# Lancer le pipeline
nextflow run nf-core/demo -r 1.0.1 \
    -profile conda \
    -c config/custom.config \
    --input input_data/samplesheet.csv \
    --outdir results/demo \
    -resume

