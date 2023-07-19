module "components_cognito" {
  source  = "../../"
  # insert the 1 required variable here
  user_group_name = "Test_user_group"
  user_group_description = "Test_User_Group"
}
