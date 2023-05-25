module "files" {
  source  = "./module/files"
  content = "test"
  name    = "name"
  number_of_files = 5
}

module "read" {
  source  = "./module/read"
  prefix  = "read-"
}

locals {
  answers = file("terraform.tfvars")
}

module "write" {
  source = "./module/write"
  answer_1 = local.answers
  answer_2 = local.answers
  answer_3 = local.answers
  answer_4 = local.answers
  answer_5 = local.answers
}

module "data" {
  source = "./module/data"
  file_path = module.files.file_paths[0]
  depends_on = [module.files]
}

output "files_module_outputs" {
  value = module.files
}
output "read_module_outputs" {
  value = module.read
}
output "write_module_outputs" {
  value = module.write
} 

output "data_module_outputs" {
   value = module.data.file_id
}
