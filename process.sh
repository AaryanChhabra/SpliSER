#bam files in BAM_files

mkdir SpliSER_process

cat SRR_Acc_List.txt | parallel -j 2 "regtools junctions extract -s 0 -o BED_Files/{}.bed BAM_Files/{}.bam"

cat SRR_Acc_LIst.txt | parallel -j 1 "python SpliSER-master/SpliSER_v0.1.7.py process -A  -B BAM_Files/{}.bam -b BED_Files/{}.bed -o spliSER_process/{}.SpliSER.bed"
