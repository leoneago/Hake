#!/bin/bash
in=.
src=/usr/local/bin
#
# Build the catalog of loci available in the metapopulation from the samples contained
# in the population map. To build the catalog from a subset of individuals, supply
# a separate population map only containing those samples.
#
cstacks2 -n 2 -P /share/projects/HAKE/ustacks_m5_M2_clean_nc2 -M /share/projects/HAKE/ustacks_m5_M2_clean_nc2/popmap -p 8
#
# Run sstacks. Match all samples supplied in the population map against the catalog.
#
sstacks2 -P /share/projects/HAKE/ustacks_m5_M2_clean_nc2 -M /share/projects/HAKE/ustacks_m5_M2_clean_nc2/popmap -p 8
