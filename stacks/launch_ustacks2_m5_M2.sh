src=/usr/local/bin
i=$1
m=$5
M=$2
out=/share/projects/HAKE/clean/ustacks2_m5_M2
mkdir $out

echo "" > $out/out.log
i=1

for f in $inp/*.fq_1.gz; do
        echo $i
        $src/ustacks2 -t gzfastq -f $f -o $out -i $i -m $m -M $M -p 8 -d -r >> $out/out.log
        i=$((i+1))
done
