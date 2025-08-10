resource "aws_instance" "web" {

    ami = data.aws_ami.web.id

    instance_type = "t3.micro"
    key_name = "project"
    vpc_security_group_ids = [aws_security_group.web_sg.id]

    tags = {
        name =  "hello"      
    }
  
}