provider "http" {}

variable "city" {
  default = "Singapore"
}

variable "api_key" {
  default = "dc7bd84988c82bb57791199900fee5f6"
}

data "http" "weather" {
  url = "https://api.openweathermap.org/data/2.5/weather?q=${var.city}&appid=${var.api_key}"

  # Optional headers (e.g., for other APIs)
  request_headers = {
    Accept = "application/json"
  }
}

output "weather_data" {
  value = jsondecode(data.http.weather.response_body)
}

output "temperature" {
  value = jsondecode(data.http.weather.response_body).main.temp
}

output "humidity" {
  value = jsondecode(data.http.weather.response_body).main.humidity
}
