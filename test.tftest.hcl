run "example_test" {
  command = plan

  // Define any variables required for your test
  variables {
    vpc_cidr_block = "10.10.0.0/16"
  }

  // Assertions to validate the test outcome
  assert {
    condition     = module.my_vpc.vpc_cidr_block == var.vpc_cidr_block
    error_message = "Test failed: the VPC CIDR block was not as expected."
  }
}