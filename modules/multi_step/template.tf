resource "local_file" "run_test_script" {
  content = templatefile("${path.module}/templates/run_test_script.tmpl",
    {
      DATADOG_API_KEY   = var.datadog_api_key,
      DATADOG_APP_KEY   = var.datadog_app_key,
      SYNTHETIC_TEST_ID = datadog_synthetics_test.multi.id
    }
  )
  filename = local.script_relative_path
}

