variable "aws_region" {
  type = string 
  
  description = ""
  
  default = "eu-central-1" 
}
  
  
  
variable "aws_profile" {

  type = string 
  
  description = ""
  
  default = "descrição do perfil"
}



variable "instance_ami"  {

  type = string

  description = ""

  default = "código AMI"
}

  

variable "instance_type" {

  type = string
  
  description = ""
  
  default = "tipo da instancia"
  
}


variable "instance_tags" {

  type = map(string)
  
  description = ""
  
  default = {
  
     Name = "Nome do sistema operacional da Instancia"
    
     Project = "Nome do Projeto"
    }
    
}