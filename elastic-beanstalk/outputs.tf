output "id" {
    description = "ID of the Elastic Beanstalk Environment"
    value       = aws_elastic_beanstalk_environment.src.id
}

output "name" {
    description = "Name of the Elastic Beanstalk Environment"
    value       = aws_elastic_beanstalk_environment.src.name
}

output "application" {
    description = "The Elastic Beanstalk Application specified for this environment"
    value       = aws_elastic_beanstalk_environment.src.application
}

output "cname" {
    description = "Fully qualified DNS name for this Environment"
    value       = aws_elastic_beanstalk_environment.src.cname
}

output "instances" {
    description = "Instances used by this Environment"
    value       = aws_elastic_beanstalk_environment.src.instances
}

output "launch_configurations" {
    description = "Launch configurations in use by this Environment"
    value       = aws_elastic_beanstalk_environment.src.launch_configurations
}

output "load_balancers" {
    description = "Elastic load balancers in use by this Environment"
    value       = aws_elastic_beanstalk_environment.src.load_balancers
}

output "autoscaling_groups" {
    description = "The autoscaling groups used by this Environment"
    value       = aws_elastic_beanstalk_environment.src.autoscaling_groups
}

output "triggers" {
    description = "Autoscaling triggers in use by this Environment"
    value       = aws_elastic_beanstalk_environment.src.triggers
}

output "endpoint_url" {
    description = "The URL to the Load Balancer for this Environment"
    value       = aws_elastic_beanstalk_environment.src.endpoint_url
}
