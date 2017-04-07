<config.mk

VCF_BED_CALL=`{./bin/targets}

vcf_bed_call:VE:	$VCF_BED_CALL

results/vcf_bed_call/%.trimmed.vcf:D:	data/%.vcf.gz
	mkdir -p `dirname $target`
	bcftools call \
		-c
		-o $target".build" \
		-Ov \
		-R $BED \
		$prereq \
	&& mv $target".build" $target
