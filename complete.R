complete<-function(directory,id=1:332){
       directory<-file.path(directory,"")
       Total<-data.frame(id=integer(),nobs=integer())
       
       for(i in id){
              file_name<-sprintf("%03d.csv",i)
              file_path<-file.path(directory,file_name)
              data<-read.csv(file_path)
              complete_case<-sum(complete.cases(data))
              Total<-rbind(Total,data.frame(id=i,nobs=complete_case))
       }
       return(Total)
}
