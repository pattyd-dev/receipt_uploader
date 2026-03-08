data "archive_file" "triggerTextract_code" {
  type        = "zip"
  source_file = "${var.workspace_path}/src/triggerTextract_v2.py"
  output_path = "${var.workspace_path}/output/triggerTextract_v2.zip"
}
