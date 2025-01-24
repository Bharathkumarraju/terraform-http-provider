
data "http" "httpbin_get" {
  url = "https://httpbin.org/get"

  request_headers = {
    "accept" = "application/json"
  }
}

resource "null_resource" "log_get_request" {
  provisioner "local-exec" {
    command = <<EOT
      echo "GET Request Made to ${data.http.httpbin_get.url}"
      echo "Response Status: ${data.http.httpbin_get.status_code}"
      echo "Origin: $(echo '${jsondecode(data.http.httpbin_get.response_body).origin}')"
    EOT
  }

  triggers = {
    status_code = data.http.httpbin_get.status_code
  }
}


output "get_url" {
  value = data.http.httpbin_get.url
}

output "status_code" {
  value = data.http.httpbin_get.status_code
}

output "response_body_origin" {
  value = jsondecode(data.http.httpbin_get.response_body).origin
}