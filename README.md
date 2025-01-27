# Pre-tumoral states and malignant transformation in BRCA1 mutation carriers




## 0.0 Setup Instructions - input folder
* To start the analysis and reproduce the results as in the paper, the folder **BRCA1_Tumorigenesis** has to be downloaded as it is. 
* Once placed at the root directory, the user creates both an **input** and **output** empty folders.
* The user has to download the input data (count matrices) from GSE200444, and place it in the "input" folder
* In the input folder, each data_type has to be organized in its own sub-folder. Its architecture should be as following:
```
input
├── human
│   ├── MERFISH
│   │   └── juxtaTumor
│   │       ├── S1_BRCA1_mut
│   │       ├── S2_BRCA1_mut
│   │       ├── S3_BRCA1_mut
│   │       └── S4_BRCA1_mut
│   └── publicDatasets
│       ├── CPTAC_breast
│       └── TCGA_breast
├── mouse
│   ├── multistaining
│   │   └── Multi_Thresholded
│   ├── scRNAseq
│   │   └── invivo
│   │       └── Count_Matrices
│   │           ├── CreN_5m_a
│   │           ├── CreN_5m_b
│   │           ├── CreN_6m
│   │           ├── CreP_2.7m
│   │           ├── CreP_3m
│   │           ├── CreP_5m
│   │           ├── T1
│   │           ├── T2
│   │           ├── T3
│   │           ├── mmT_5.2m
│   │           └── mmT_5.4m
│   └── snH3K4me1
│       └── Fragment_Files
```                

## 0.0 Setup Instructions - output folder
The output folder contains the figures, Rdata files, output from the scripts. Similarly to the input, this folder is organized according to the data type analyzed, and sub-folders should created as following:
```
.
├── human
│   ├── public_data
│   └── MERFISH
└── mouse
    ├── multistaining
    ├── snH3K4me1
    └── scRNAseq
``` 
#### Note: After running the scripts for each part of the analysis, the output folder will contain sub-folders organized per downstream steps. Final/Intermediate Rdata files generated throughout the analysis will be stored in **RData** folder. 
## 1.0 Script description
+ temporal scRNAseq data of in vivo mammary glands in Brca1/Trp53 deficient mouse models

```
├── Scripts_invivo_Mouse
│   ├── Step0_1_Preprocessing_QC.Rmd
│   ├── Step0_2_BRCA_ClusterAnnotation.Rmd
│   ├── Step1_1_EpithelialCompartment_Annot.Rmd
│   ├── Step1_2_DiffExpression_PEA.Rmd
│   ├── Step2_1_PAGA_Python_R.Rmd
│   ├── Step3_1_CNVInference.Rmd
│   ├── Step3_2_CNVmatrixBinarization.Rmd
│   ├── Step3_3_ConcensusClustering.Rmd
│   ├── Step3_4_IntraClusterCorrelation.Rmd
│   ├── Step3_5_Hetmap_Alterations.Rmd
│   ├── Step4_1_invivo_Mouse_Stroma_Annotation.Rmd
│   ├── Step4_TF_Enrichment_CHEA3.Rmd
│   ├── Step4_invivo_Mouse_CellCellCommunication.Rmd
│   └── global_var_current.R
├── global_var_current.Rmd
├── global_variables.Rmd
└── scRNAseq_Functions.Rmd
```

+ multi staining data from mammary gland samples 
```
├── Scripts_MultiStaning
│   ├── Step1_Thresholding.Rmd
│   ├── Step2_DownstreamPlots.Rmd
│   └── Step3_Sunburst_Plots.Rmd
```

+ snH3K4me1 histone modification profiling from mouse mammary gland samples
```
├── Scripts_Epigenome
│   ├── Epigenome_mm_H3K4me1_1_Preprocessing.Rmd
│   └── Epigenome_mm_H3K4me1_2_Epithelial_Subset.Rmd
```


+ MERFISH spatial data analysis of human Juxta-Tumor BRCA1 mut biopsies
```
├── Scripts_Spatial_MERFISH
│   ├── MERFISH_HU_1_Preprocessing.Rmd
    └── MERFISH_HU_2_SpatialAutocorrelation.Rmd
```


+ bulk RNAseq data from PanCancer breast (TCGA) and Breast CPTAC data

```
├── Scripts_bulkData
│   ├── CPTAC_BREAST.Rmd
│   ├── Global_Variables_TCGA.Rmd
│   ├── Step0_TCGA_Preprocessing.Rmd
│   ├── Step1_TCGA_Normalization.Rmd
│   ├── Step2_TCGA_DiffExpression_Comparison.Rmd
│   ├── Step3_TCGA_SignatureComparison.Rmd
│   ├── Step4_TCGA_MetadataComparison.Rmd
│   ├── Step5_TCGA_SurvivalAnalysis.Rmd
│   ├── Step6_TCGA_P16Signature_Evaluation.Rmd
│   └── Step7_TCGA_Signature_Association_Survival.Rmd
```

