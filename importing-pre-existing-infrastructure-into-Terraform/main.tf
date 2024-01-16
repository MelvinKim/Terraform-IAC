# Importing EC2 Instance infra  
# import {
#   id = "i-06c24ba3d8dba29ef" # resource ID
#   to = aws_instance.example
# }
/* Then ran: 
1. tf plan -generate-config-out=generated_ec2_resources.tf
2. To update terraform state file with the new resource data
    terraform import aws_instance.example <instance-id>
*/

# Importing RDS infra
# import {
#   id = "prod-ke-encrypted"
#   to = aws_db_instance.example
# }
/* Then ran: 
1. tf plan -generate-config-out=generated_ec2_resources.tf
2. To update terraform state file with the new resource data
    terraform import aws_instance.example <instance-id>
*/

# Importing s3 buckets
# import {
#   id = "vpc-6e6c8406"
#   to = aws_vpc.example
# }

# Importing AWS EKS cluster
import {
  id = "prod-prometheus"
  to = aws_key_pair.prod-prometheus
}