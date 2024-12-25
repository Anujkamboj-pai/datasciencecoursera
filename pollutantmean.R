pollutantmean <- function(directory, pollutant, id = 1:332) {
     directory <- file.path(directory,"")
     file_name<-sprintf("%03d.csv",id)
     file_paths<-file.path(directory,file_name)
     Pollutant_Value<-c()
     data<-read.csv(file_paths)
     #data[[pollutant]] <- as.numeric(data[[pollutant]])
     Pollutant_Value<-c(Pollutant_Value,data[[pollutant]])
                
     mean(Pollutant_Value,na.rm=TRUE)
}



