
pkgs1 <- c("ade4","adehabitatHR","anytime","bindrcpp","caret","caretEnsemble",
            "cluster","Dasst","deldir","devtools","dismo","distances",  
            "domc","doMC","doParallel","doSNOW","dplyr","DSSAT",       
            "earth","FactoMineR","fastcluster","fields","foreach","fpc",          
            "fst","furrr","future","future.apply","geosphere","ggplot2",      
            "ggspatial","glue","gtools","Hmisc","kernlab","latticeExtra", 
            "lubridate","maptools","maxnet","mclust","meteor","openxlsx",     
            "pacman","parallelDist","proc","proj4","purrr","RandomFields", 
            "randomForest","raster","rasterVis","RColorBrewer","readxl","reshape",      
            "rgdal","rgeos","rlang","RMAWGEN","rpart","Rquefts", "Rwofost",      
            "sdm","sf","snow","sp","spatstat","spData",       
            "spDataLarge","spdep","spgwr","stringr","stringr","tcltk2",      
            "terra","tictoc","tidyr","tidyverse","trend","usdm","vroom","XML")

lapply(pkgs1, install.packages, dependencies=TRUE, repos='http://cran.rstudio.com/', Ncpus = 8)

pkgs2 <- c("CIAT-DAPA/analogues", "palderman/dssatR", "agrobioinfoservices/climatrends",
           "agrobioinfoservices/gosset", "agrobioinfoservices/gdistance",
           "agrobioinfoservices/ClimMobTools", "rspatial/terra",
           "cropmodels/Recocrop", "ropensci/rgbif")

lapply(pkgs2, devtools::install_github)
devtools::install_git('https://gitlab.croptrust.org/genesys-pgr/genesysr')
