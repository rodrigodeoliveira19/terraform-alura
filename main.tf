#Plugins. Responsável por interagir com a infra.
provider "aws" {
  region = "us-east-1"
}

/*Descreve um ou mais objetos de infraestrutura, como redes virtuais, instâncias de computação ou componentes de nível superior, como registros DNS.
https://www.terraform.io/language/resources
*/
#key_name foi gerada com o ssh e importada no ec2 da aws
resource "aws_instance" "dev" {
  ami = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  key_name = "terraform-aws-2"
}