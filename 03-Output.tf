## Lead singer of the group - access to the groupies first
# IAM Group Policies
resource "aws_iam_group_policy" "newedition_policy" {
  name   = "newedition_policy"
  group  = aws_iam_group.newedition.name
  policy = var.ne_policy_json
}
#where i decide what you get to see
# effect- allow or deny, action

# IAM Policies
variable "ne_policy_json" {
  default = <<JSON
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "*",
      "Resource": "*"
    }
  ]
}
JSON
}

resource "aws_iam_group_policy" "one12_policy" {
  name   = "one12_policy"
  group  = aws_iam_group.one12.name
  policy = var.onetwelve_policy_json
}

variable "onetwelve_policy_json" {
  default = <<JSON
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "billing:*",
        "ec2:*",
        "cognito-identity:*",
        "organizations:*"
      ],
      "Resource": "*"
    }
  ]
}
JSON
}

resource "aws_iam_group_policy" "nsync_policy" {
  name   = "nsync_policy"
  group  = aws_iam_group.nsync.name
  policy = var.timberlake_policy_json
}

variable "timberlake_policy_json" {
  default = <<JSON
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "organizations:DescribeOrganization",
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": "ec2:Describe*",
      "Resource": "*"
    }
  ]
}
JSON
}

resource "aws_iam_group_policy" "blacksteet_policy" {
  name   = "blackstreet_policy"
  group  = aws_iam_group.blackstreet.name
  policy = var.teddy_policy_json
}

variable "teddy_policy_json" {
  default = <<JSON
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:Describe*",
      "Resource": "*"
    }
  ]
}
JSON
}