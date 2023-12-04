resource "aws_iam_group" "blackstreet" {
  name = "blackstreet"
  path = "/"
}

resource "aws_iam_user" "teddyriley" {
    name = "teddyriley"
    path = "/"
}

resource "aws_iam_group_membership" "teddyriley_membership" {
  name = aws_iam_user.teddyriley.name
  users = [aws_iam_user.teddyriley.name]
  group = aws_iam_group.blackstreet.name
}
resource "aws_iam_group" "nsync" {
  name = "nsync"
  path = "/"
}

resource "aws_iam_user" "timberlake" {
    name = "timberlake"
    path = "/"
}

resource "aws_iam_group_membership" "timberlake_membership" {
  name = aws_iam_user.timberlake.name
  users = [aws_iam_user.timberlake.name]
  group = aws_iam_group.nsync.name
}

resource "aws_iam_group" "one12" {
  name = "one12"
  path = "/"
}

resource "aws_iam_user" "slim" {
    name = "slim"
    path = "/"
}

resource "aws_iam_group_membership" "slim_membership" {
  name = aws_iam_user.slim.name
  users = [aws_iam_user.slim.name]
  group = aws_iam_group.one12.name
}

  resource "aws_iam_group" "newedition" {
  name = "newedition"
  path = "/"
}

resource "aws_iam_user" "thuglovin" {
    name = "thuglovin"
    path = "/"
}

resource "aws_iam_group_membership" "thuglovin_membership" {
  name = aws_iam_user.thuglovin.name
  users = [aws_iam_user.thuglovin.name]
  group = aws_iam_group.newedition.name
}


