#!/bin/bash

# Install Terraform-docs
TFM_DOCS_VER="0.13.0"

if ! command -v terraform-docs >/dev/null 2>&1; then
  curl -Lo ./terraform-docs.tar.gz "https://github.com/terraform-docs/terraform-docs/releases/download/v${TFM_DOCS_VER}/terraform-docs-v${TFM_DOCS_VER}-linux-amd64.tar.gz"
  tar -xzf terraform-docs.tar.gz 
  chmod +x terraform-docs 
  mv terraform-docs /usr/local/bin/terraform-docs
fi

terraform-docs markdown table --output-file  README.md . --sort-by required
