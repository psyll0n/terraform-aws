###########################
# OUTPUTS
###########################

output "peer_role_arn" {
    value = aws_iam_role.peer_role.arn
}