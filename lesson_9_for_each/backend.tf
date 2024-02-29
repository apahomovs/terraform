terraform {
  backend "s3" {
    region = "us-east-1"            #where the bucket is
    bucket = "backendvedro"         #bucket name    
    key    = "tf-lesson9-statefile" #how to name state file
    #dynamodb_table = "b11-tf-lesson-two"    #name of the table #comment out to not destroy dynamodb
  }
}
