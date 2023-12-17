# Importing EC2 Instance infra  
import {
  id = "i-0e1a1a2255a0e8c49" # resource ID
  to = aws_instance.example
}
/* Then ran: 
1. tf plan -generate-config-out=generated_ec2_resources.tf
2. To update terraform state file with the new resource data
    terraform import aws_instance.example <instance-id>
*/

# Importing RDS infra
import {
  id = "rw-stage-ads-middleware"
  to = aws_db_instance.example
}
/* Then ran: 
1. tf plan -generate-config-out=generated_ec2_resources.tf
2. To update terraform state file with the new resource data
    terraform import aws_instance.example <instance-id>
*/