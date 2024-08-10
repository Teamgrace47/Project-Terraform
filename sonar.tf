resource "aws_instance" "mySonarInstance" {
      ami           = "ami-98gh5d9c7atyshj56s"
      key_name = "test1keys"
      instance_type = "t2.micro"
      vpc_security_group_ids = [aws_security_group.sonar-sg-2024.id]
      tags= {
        Name = "sonar_instance"
      }
    }

 resource "aws_security_group" "sonar-sg-2024" {
      name        = "security_sonar_group_2024"
      description = "security group for Sonar"

      ingress {
        from_port   = 9000
        to_port     = 9000
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

     ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

     # outbound from Sonar server
      egress {
        from_port   = 0
        to_port     = 65535
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

      tags= {
        Name = "security_sonar"
      }
    }

# Create Elastic IP address for Sonar instance
resource "aws_eip" "mySonarInstance" {
   domain      = "vpc"
  instance = aws_instance.mySonarInstance.id
tags= {
    Name = "sonar_elastic_ip"
  }
}
