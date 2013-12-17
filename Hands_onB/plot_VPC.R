### Template for R-script
###
### If this script is placed in the /scripts directory in the main Pirana
### folder, the script is automatically available from the Pirana menu ("scripts")
###
### Arguments that are automatically supplied by Pirana to this script are:

library(xpose4)

models <- list ( 
  "npc_dir1" = list ( 
    modelfile       = "npc_dir1.mod",
    description     = "",
    reference_model = "",
    working_dir     = "/Users/ronkeizer/data/PSP",
    data_file       = "",
    output_file     = "npc_dir1.lst",
    tables          = c("")
  )
)

setwd('/Users/ronkeizer/data/PSP')
folder <-  "npc_dir1" 

csv_file <- dir(folder, pattern="raw_result")[1]
filename <- paste("pirana_reports/run5_vpc_", folder, ".pdf", sep="")
if (!file.exists("pirana_reports")) {dir.create ("pirana_reports")}
if (file.exists (paste("pirana_reports/xpose_vpc_",folder,".pdf", sep=""))){
    file.remove (paste("pirana_reports/xpose_vpc_",folder,".pdf", sep=""))
}

vpc.info <- paste(folder,"/vpc_results.csv", sep="")
vpctab <- paste(folder, "/", dir(folder, pattern = "^vpctab")[1], sep="")
fname <- paste("pirana_reports/run5_xpose_vpc_",folder,"_logy.pdf", sep="")
if (file.exists(fname)) {
    file.remove(fname)
}

pl <- xpose.VPC(vpc.info=vpc.info, 
                vpctab = vpctab,
                logy=10, 
                main="",
                pch=19, cex=0.25, col="black",
                type="p",
                PI.ci="area",
                PI.ci.med.arcol=rgb(0.1,0.1,0.1,1),
                PI.ci.med.lty="dotted",
                PI.ci.up.arcol=rgb(0.6,0.6,.6,1),
                PI.ci.down.arcol=rgb(0.6,0.6,.6,1),
                PI='a', 
                PI.real='lines',
                PI.real.up.col='grey51',
                PI.real.down.col='grey51',
                PI.real.med.col='black')

pdf(fname, width=5, height=5)
print (pl)
dev.off()

