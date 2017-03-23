<config.mk

VCF_BED_CALL=`{./bin/targets}

vcf_bed_call:VE:	$VCF_BED_CALL

results/vcf_bed_call/%.trimmed.vcf:D:	data/%.vcf
	mkdir -p `dirname $target`
	bcftools call \
		-o $target".build" \
		-O v \
		-R $BED \
	&& mv $target".build" $target
