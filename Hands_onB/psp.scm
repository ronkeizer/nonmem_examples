search_direction=both               ; forward, backward or both?
p_forward=0.1                       ; significance level of forward step
p_backward=0.05                     ; significanc level of backward step
continuous_covariates=WT,CRCL,AGE   ; include continuous covariates                                     
categorical_covariates=SEX,CENT     ; include categorical covariates

missing_data_token=-99              ; if missing data, included as -99 in dataset
nm_version=default                  ; NONMEM version to use by PsN
retries=1                           ; number of retries upon failure of a NONMEM run
threads=6                           ; number of parallel threads
tweak_inits=1                       ; tweak initial estimates upon retry. See PsN help
picky=0                             ; see PsN help

[test_relations]
CL=WT,CRCL,AGE,SEX,CENT             ; covariate relations to test on CL
V1=WT,AGE,SEX,CENT                  ; covariate relations to test on V1

[valid_states]
continuous = 1,2,3                  ; Shapes of continuous parameter-covariate relations to test
categorical = 1,2                   ; Shapes of categorical parameter-covariate relations to test

