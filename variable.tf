variable "AWS_ACCESS_KEY" {
  type = string
}
variable "AWS_SECRET_KEY" {
  type = string
}
variable "AWS_REGION" {
  type = string
  default = "ap-northeast-2"
}
variable "AMI" {
  type = map(string)
  default = {
    ap-northeast-1 = "ami-05438a9ce08100b25"
    ap-northeast-2 = "ami-05438a9ce08100b25"
  }
}