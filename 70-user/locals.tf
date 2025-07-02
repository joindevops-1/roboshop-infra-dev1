locals {
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    private_subnet_id = split ("," , data.aws_ssm_parameter.private_subnet_ids.value)[0]
    ami_id = data.aws_ami.joindevops.id
    user_sg_id = data.aws_ssm_parameter.user_sg_id.value
    current_time = formatdate("YYYY-MM-DD-hh-mm", timestamp())
    common_tags = {
        Project = var.project
        Environment = var.environment
        Terraform = "true"
    }
}