terraform { 
  cloud { 
    
    organization = "Cloudwitch" 

    workspaces { 
      name = "aws-infra" 
    } 
  } 
}