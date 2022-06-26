OUTDIR:=dict
SUBMODDIR:=dict_nds
OUTZIP:=firefox_nds_dict.zip

$(OUTZIP): $(OUTDIR)/nds_de.dic
	zip firefox_nds_dict.zip manifest.json dict/*

$(OUTDIR)/nds_de.dic: $(OUTDIR)/nds_de.aff
	mkdir -p $(OUTDIR); cp $(SUBMODDIR)/dist/nds_de.dic $(OUTDIR)/

$(OUTDIR)/nds_de.aff: submod
	mkdir -p $(OUTDIR); cp $(SUBMODDIR)/dist/nds_de.aff $(OUTDIR)/

submod:
	cd $(SUBMODDIR); make

.PHONY: all
all: $(OUTZIP) $(OUTDIR)/nds_de.dic $(OUTDIR)/nds_de.aff
