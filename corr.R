corr<-function(directory,threshold=0){
       directory<-file.path(directory,"")
       files <- list.files(directory, full.names = TRUE)
       correlations<-c()
       for(file_path in files){
              data<-read.csv(file_path)
              complete_cases<-complete.cases(data$sulfate,data$nitrate)
              total_complete<-sum(complete_cases)
              if(total_complete>threshold){
                     final_data<-data[complete_cases, ]
                     cor_data<-cor(final_data$sulfate,final_data$nitrate,use="complete.obs")
                     correlations<-c(correlations,cor_data)
              }
       }
       return(correlations)
}


