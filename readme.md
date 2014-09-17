NONMEM example models
=====================

This is a collection of PK models and datasets. These files are primarily intended for workshops and for playing round with NONMEM features. All data are simulated, and all models and data are freely available for use and distribution under the MIT license. 

## Getting started

If you have git installed on your computer, you can easily clone this repository by running 

`git clone https://github.com/ronkeizer/nonmem_examples.git`

If you don't have git installed, or you're not sure, just download this repository as a zip-file using the download link on the right. Unzip the folders on your harddrive.

Next, if you want to use the models in PiranaJS or Pirana, do the following:
- In Pirana/PiranaJS go to a folder where you want the models to be
- In Explorer(Windows) or Finder(Mac) browse to one of the downloaded folders.
- Select all files and drag them onto the interface. They will then be uploaded (PiranaJS) or copied (Pirana) to the specified folder.

## Description
- Hands_onA: PK model with covariates 
  - Model: One compartment, oral, linear absorption
  - Covariates: 
    - `sex`: Sex (binary: 0/1)
    - `wt`: Weight in kg (continuous)
    - `etn`: Ethnicity (categorical: 0/1/2)

- Hands_onB: PK model with covariates
  - Model: One compartment, iv
  - Covariates:
    - `WT`: Weight in kg (continuous)
    - `CRCL`: Creatinine clearance (continuous)
    - `AGE`: Age in years (continuous)
    - `SEX`: Sex (binary: 0/1)
    - `CENT`: Study center (binary: 0/1)
