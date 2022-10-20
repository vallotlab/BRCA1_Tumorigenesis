## ----setup, include=FALSE, message=FALSE--------------------------------------------------------------------------
knitr::opts_chunk$set(echo = F)


## ----directories creation-----------------------------------------------------------------------------------------
#the main Dir should be the root directory in which both input, output and script folders are stored
mainDir= here::here()
inputDir=  file.path(mainDir,"input", "scRNAseq","mouse", "Count_Matrices") 
outputDir= file.path(mainDir, "output", "scRNAseq", "invivo")
#####################
RDatadir <- file.path(outputDir,"RData") ; if(!file.exists(RDatadir)){dir.create(RDatadir)}
QCdir <- file.path(outputDir, "QC") ; if(!file.exists(QCdir)){dir.create(QCdir)}
DEdir <- file.path(outputDir, "DiffExp") ; if(!file.exists(DEdir)){dir.create(DEdir)}
clustDir= file.path(outputDir, "Clustering") ; if(!file.exists(clustDir)){dir.create(clustDir)}
annotDir= file.path(outputDir, "Annotation") ; if(!file.exists(annotDir)){dir.create(annotDir)}
pseudotimeDir= file.path(outputDir, "Pseudotime") ; if(!file.exists(pseudotimeDir)){dir.create(pseudotimeDir)}
pagaDir= file.path(pseudotimeDir, "PAGA") ; if(!file.exists(pagaDir)){dir.create(pagaDir)}
phateDir= file.path(pseudotimeDir, "Phate") ; if(!file.exists(phateDir)){dir.create(phateDir)}
slingshotDir= file.path(pseudotimeDir, "Slingshot") ; if(!file.exists(slingshotDir)){dir.create(slingshotDir)}

##------------------ SPECIFIC ARRANGEMENT TO CNV INFERENCE ---------------------###############
####These folders to store the Figures output:
cnvDir= file.path(outputDir, "CNVinference") ; if(!file.exists(cnvDir)){dir.create(cnvDir)}
#cntcnvDir= file.path(cnvDir, "CNTR_CNVinference") ; if(!file.exists(cntcnvDir)){dir.create(cntcnvDir)}
#stcnvDir= file.path(cnvDir, "ST_CNVinference") ; if(!file.exists(stcnvDir)){dir.create(stcnvDir)}
#ltcnvDir= file.path(cnvDir, "LT_CNVinference") ; if(!file.exists(ltcnvDir)){dir.create(ltcnvDir)}
#mtcnvDir= file.path(cnvDir, "MT_CNVinference") ; if(!file.exists(mtcnvDir)){dir.create(mtcnvDir)}
ccDir=file.path(cnvDir, "Cons_Clust") ; if(!file.exists(ccDir)){dir.create(ccDir)}
altDir=file.path(cnvDir, "CNV_Alterations") ; if(!file.exists(altDir)){dir.create(altDir)}
hDir=file.path(cnvDir, "Heatmaps") ; if(!file.exists(hDir)){dir.create(hDir)}
###
#I will also create INSIDE THE RDATA DIRECTORY SUB FOLDERS TO STORE THE QS FILES OF THE OUTPUT FROM CNV INFERENCE:

ocnvDir= file.path(RDatadir, "CNVinference") ; if(!file.exists(ocnvDir)){dir.create(ocnvDir)}
ocntcnvDir= file.path(ocnvDir, "CNTR_CNVinference") ; if(!file.exists(ocntcnvDir)){dir.create(ocntcnvDir)}
ostcnvDir= file.path(ocnvDir, "ST_CNVinference") ; if(!file.exists(ostcnvDir)){dir.create(ostcnvDir)}
oltcnvDir= file.path(ocnvDir, "LT_CNVinference") ; if(!file.exists(oltcnvDir)){dir.create(oltcnvDir)}
omtcnvDir= file.path(ocnvDir, "MT_CNVinference") ; if(!file.exists(omtcnvDir)){dir.create(omtcnvDir)}
occDir=file.path(ocnvDir, "Cons_Clust") ; if(!file.exists(occDir)){dir.create(occDir)}
oaltDir=file.path(ocnvDir, "CNV_Alterations") ; if(!file.exists(oaltDir)){dir.create(oaltDir)}

##------------------ SPECIFIC ARRANGEMENT TO TF enrichment
TFDir= file.path(outputDir, "TF_Enrichment") ; if(!file.exists(TFDir)){dir.create(TFDir)}
cheaDir= file.path(TFDir, "CHEA3") ; if(!file.exists(cheaDir)){dir.create(cheaDir)}
scenicDir= file.path(TFDir, "SCENIC") ; if(!file.exists(scenicDir)){dir.create(scenicDir)}

