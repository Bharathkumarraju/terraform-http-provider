provider "http" {}

provider "null" {}


variable "city" {
  default = "Singapore"
}

variable "api_key" {
  default = "dc7bd84988c82bb57791199900fee5f61234"
}

# Fetch weather data
data "http" "weather" {
  url = "https://api.openweathermap.org/data/2.5/weather?q=${var.city}&appid=${var.api_key}"

  request_headers = {
    Accept = "application/json"
  }
}

# Null resource to log weather information
resource "null_resource" "log_weather_data" {
  provisioner "local-exec" {
    command = <<EOT
      echo "Weather data for ${var.city}:"
      echo "Temperature: ${jsondecode(data.http.weather.response_body).main.temp}K"
      echo "Humidity: ${jsondecode(data.http.weather.response_body).main.humidity}%"
      echo "Conditions: $(echo '${jsondecode(data.http.weather.response_body).weather[0].description}')"
    EOT
  }

  triggers = {
    temperature = jsondecode(data.http.weather.response_body).main.temp
    humidity    = jsondecode(data.http.weather.response_body).main.humidity
    weather     = jsondecode(data.http.weather.response_body).weather[0].description
  }
}

# Outputs
output "weather_data" {
  value = jsondecode(data.http.weather.response_body)
}

output "temperature" {
  value = jsondecode(data.http.weather.response_body).main.temp
}

output "humidity" {
  value = jsondecode(data.http.weather.response_body).main.humidity
}
