

# Define variables for dynamic values
variable "name" {
  default = "Bharath"
}

variable "email" {
  default = "bharath@example.com"
}



# Use the built-in templatefile() function to load and render the JSON template
data "http" "httpbin_post" {
  url    = "https://httpbin.org/post"
  method = "POST"

  # Render the JSON payload using the templatefile() function
  request_body = templatefile("${path.module}/payloads/test.json.tpl", {
    name  = var.name
    email = var.email
    city  = var.city
  })

  request_headers = {
    "Content-Type" = "application/json"
    "Accept"       = "application/json"
  }
}

# Log the POST request details
resource "null_resource" "log_post_request" {
  provisioner "local-exec" {
    command = <<EOT
      echo "POST Request Made to ${data.http.httpbin_post.url}"
      echo "Response Status: ${data.http.httpbin_post.status_code}"
      echo "Payload Sent: $(templatefile('${path.module}/payloads/test.json.tpl', {
        name  = var.name,
        email = var.email,
        city  = var.city
      }))"
      echo "Response Body: ${data.http.httpbin_post.response_body} | jq ."
    EOT
  }

  triggers = {
    status_code = data.http.httpbin_post.status_code
  }
}
