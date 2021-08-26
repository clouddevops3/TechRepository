resource "aws_internet_gateway" "gw" {
        vpc_id = aws_vpc.vpcconcord.id

        tags   = {
        Name   = "Internet Gateway"
        }
  
}



