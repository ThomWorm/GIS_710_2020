

assignments <- data.frame()

assignments$student <- LETTERS[1:10]
assignments$blogURL <- "Paste Blog URL here"
assignments$reviewer1 <- sample(assignments$student)
assignments$reviewer2 <- sample(assignments$student)


rev1unique <- FALSE
rev2unique<- FALSE


while(rev1unique == FALSE){
  
  for (i in 1:length(assignments$student)){
    
    if( assignments$student[i] == assignments$reviewer1[i]){
      
      print(i)
      assignments$reviewer1 <- sample(assignments$student)
      break
    }
      
      
    else if ( (i== length(assignments$student))  & assignments$reviewer1[i] != assignments$student[i] ){
      
      rev1unique <- TRUE
      
    }
    
    
    else {}
    }
    
  }
  
  
while(rev2unique == FALSE){
  
  for (i in 1:length(assignments$student)){
    
    if( (assignments$reviewer2[i] == assignments$student[i]) | (assignments$reviewer2[i] == assignments$reviewer1[i]) ) {
      
      print("shuffle2")
      assignments$reviewer2 <- sample(assignments$student)
      break
    }
    
    
    else if ( (i== length(assignments$student))  
              & assignments$reviewer2[i] != assignments$student[i]  
              & assignments$reviewer2[i] != assignments$reviewer1[i]){
      
      rev2unique <- TRUE
      
    }
    
    
    else {}
  }
  
}
  


