# Luminal progenitors undergo partial epithelial-to-mesenchymal transition during basal-like breast tumorigenesis (Landragin et al. 2022, BioRxiv)




## 0.0 Setup Instructions - input folder
* To start the analysis and reproduce the results as in the paper, the folder **BRCA1_Tumorigenesis** has to be downloaded as it is. 
* Once placed at the root directory, the user creates both an **input** and **output** empty folders.
* The user has to download the input data (count matrices) from GSEXXX, and place it in the "input" folder
* In the input folder, each data_type has to be organized in its own sub-folder. Its architecture should be as following:
```
input
├── human
│   ├── publicDatasets
│   │   ├── inputCPTAC_breast
│   │   ├── inputTCGA_Breast
│   │   └── input_GSE161529
│   └── snRNAseq
│       └── juxtaTumor
│           ├── filtered_matrices
│           │   ├── patient_1
│           │   ├── patient_2
│           │   ├── patient_3
│           │   ├── patient_4
│           │   └── patient_5
│           
└── mouse
    ├── multistaining
    │   ├── Multi_Thresholded
    │   
    └── scRNAseq
        └── invivo
            └── Count_Matrices
                ├── Control_Cre+2.7M
                ├── Control_Cre+3M
                ├── Control_Cre+5.2M
                ├── Medium_Tumor
                ├── Small_Tumor
                └── Large_Tumor
```                

## 0.0 Setup Instructions - output folder
The output folder contains the figures, Rdata files, output from the scripts. Similarly to the input, this folder is organized according to the data type analyzed, and sub-folders should created as following:
```
.
├── human
│   ├── public_data
│   └── snRNAseq
└── mouse
    ├── multistaining
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
│   ├── Step2_3_Pseudotime_3_Slingshot_1_Inference.Rmd
│   ├── Step2_Pseudotime_1_PHATE.Rmd
│   ├── Step2_Pseudotime_2_PAGA_Python_R.Rmd
│   ├── Step2_Pseudotime_3_Slingshot_2_PEA.Rmd
│   ├── Step3_1_CNVInference.Rmd
│   ├── Step3_2_CNVmatrixBinarization.Rmd
│   ├── Step3_3_Alterations_PerChromosome.Rmd
│   ├── Step3_4_ConcensusClustering.Rmd
│   ├── Step3_5_IntraClusterCorrelation.Rmd
│   ├── Step3_6_Hetmap_Alterations.Rmd
│   ├── Step3_7_CommonAlterations.Rmd
│   ├── Step4_Counting_MicroFoci_Orga_InVivo.Rmd
│   ├── Step5_TF_Enrichment_1_CHEA3.Rmd
│   ├── Step5_TF_Enrichment_2_SCENIC.Rmd
│   ├── global_var_current.R
│   └── invivo_Mouse_Stroma_Annotation.Rmd

├── Tumor_BRCA_p53
├── global_var_current.Rmd
├── global_variables.Rmd
├── scRNAseq_Functions.Rmd
```

+ multi staining data from mammary gland samples 
```
├── Scripts_MultiStaning
│   ├── Step1_Thresholding.Rmd
│   ├── Step2_DownstreamPlots.Rmd
│   └── Step3_Sunburst_Plots.Rmd
```


+ juxta-tumor samples from BRCA1 human carriers 
```
├── Scripts_JuxtaTumor_Human
│   ├── Step1_Juxta_Allcompartments.Rmd
│   ├── Step2_Juxta_EpithelialCompartment.Rmd
│   ├── Step3_Juxta_EpitheCompartment_inferCNV.Rmd
│   └── Step4_TF_Enrichment.Rmd
```


+ custom analysis on the epithelial compartment from BRCA1+/- human samples from GSE161529 (Pal et al.,2019)
```
.
├── Scripts_EMBO
│   ├── 0_DataPreparation.Rmd
│   ├── 1_Processing_EpithelialCompartment.Rmd
│   ├── 2_Normal_Preneo_Comparison.Rmd
│   ├── 3_Informativity_PCA.Rmd
│   ├── 4_CNV_Inference.Rmd
│   └── PC_informativity_Functions.Rmd
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

