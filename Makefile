OUTDIR:=dict
SUBMODDIR:=dict_nds

$(OUTDIR)/nds_de.dic: $(OUTDIR)/nds_de.aff
	mkdir -p $(OUTDIR); cp $(SUBMODDIR)/dist/nds_de.dic $(OUTDIR)/

$(OUTDIR)/nds_de.aff: submod
	mkdir -p $(OUTDIR); cp $(SUBMODDIR)/dist/nds_de.aff $(OUTDIR)/

submod:
	cd $(SUBMODDIR); make

.PHONY: all
all: $(OUTDIR)/nds_de.dic $(OUTDIR)/nds_de.aff
