library(ahp)

setwd("/home/beniamin/Pulpit/Studia/APU/APU/Zadanie2")
ahp_file_data <- system.file("extdata", "lab2.ahp", package="ahp")
lab2Ahp <- Load(ahp_file_data)
Calculate(lab2Ahp)
Visualize(lab2Ahp)
Analyze(lab2Ahp)
AnalyzeTable(lab2Ahp)
