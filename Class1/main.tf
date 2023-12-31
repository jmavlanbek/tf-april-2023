resource "aws_iam_user" "user" {
  name = "kaizen"
}

resource "aws_iam_user" "user1" {
  name = "janelle"
}

resource "aws_iam_group" "group" {
  name = "engineers"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.user.name,
    aws_iam_user.user1.name,
  ]

  group = aws_iam_group.group.name
}