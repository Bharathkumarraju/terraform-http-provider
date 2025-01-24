bharathkumardasaraju@terraform-http-provider$ terraform plan
data.http.httpbin_post: Reading...
data.http.httpbin_get: Reading...
data.http.weather: Reading...
data.http.weather: Read complete after 0s [id=https://api.openweathermap.org/data/2.5/weather?q=Singapore&appid=dc7bd84988c82bb57791199900fee5f6]
data.http.httpbin_post: Read complete after 1s [id=https://httpbin.org/post]
data.http.httpbin_get: Read complete after 1s [id=https://httpbin.org/get]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # null_resource.log_get_request will be created
  + resource "null_resource" "log_get_request" {
      + id       = (known after apply)
      + triggers = {
          + "status_code" = "200"
        }
    }

  # null_resource.log_post_request will be created
  + resource "null_resource" "log_post_request" {
      + id       = (known after apply)
      + triggers = {
          + "status_code" = "200"
        }
    }

  # null_resource.log_weather_data will be created
  + resource "null_resource" "log_weather_data" {
      + id       = (known after apply)
      + triggers = {
          + "humidity"    = "93"
          + "temperature" = "298.51"
          + "weather"     = "moderate rain"
        }
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + humidity     = 93
  + temperature  = 298.51
  + weather_data = {
      + base       = "stations"
      + clouds     = {
          + all = 75
        }
      + cod        = 200
      + coord      = {
          + lat = 1.2897
          + lon = 103.8501
        }
      + dt         = 1737700444
      + id         = 1880252
      + main       = {
          + feels_like = 299.53
          + grnd_level = 1006
          + humidity   = 93
          + pressure   = 1007
          + sea_level  = 1007
          + temp       = 298.51
          + temp_max   = 299.12
          + temp_min   = 298.09
        }
      + name       = "Singapore"
      + rain       = {
          + "1h" = 1.78
        }
      + sys        = {
          + country = "SG"
          + id      = 2100385
          + sunrise = 1737674086
          + sunset  = 1737717492
          + type    = 2
        }
      + timezone   = 28800
      + visibility = 9000
      + weather    = [
          + {
              + description = "moderate rain"
              + icon        = "10d"
              + id          = 501
              + main        = "Rain"
            },
        ]
      + wind       = {
          + deg   = 350
          + gust  = 0
          + speed = 1.79
        }
    }

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
bharathkumardasaraju@terraform-http-provider$ terraform apply --auto-approve
data.http.httpbin_get: Reading...
data.http.weather: Reading...
data.http.httpbin_post: Reading...
data.http.weather: Read complete after 0s [id=https://api.openweathermap.org/data/2.5/weather?q=Singapore&appid=dc7bd84988c82bb57791199900fee5f6]
data.http.httpbin_post: Read complete after 1s [id=https://httpbin.org/post]
data.http.httpbin_get: Read complete after 1s [id=https://httpbin.org/get]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # null_resource.log_get_request will be created
  + resource "null_resource" "log_get_request" {
      + id       = (known after apply)
      + triggers = {
          + "status_code" = "200"
        }
    }

  # null_resource.log_post_request will be created
  + resource "null_resource" "log_post_request" {
      + id       = (known after apply)
      + triggers = {
          + "status_code" = "200"
        }
    }

  # null_resource.log_weather_data will be created
  + resource "null_resource" "log_weather_data" {
      + id       = (known after apply)
      + triggers = {
          + "humidity"    = "93"
          + "temperature" = "298.51"
          + "weather"     = "moderate rain"
        }
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + humidity     = 93
  + temperature  = 298.51
  + weather_data = {
      + base       = "stations"
      + clouds     = {
          + all = 75
        }
      + cod        = 200
      + coord      = {
          + lat = 1.2897
          + lon = 103.8501
        }
      + dt         = 1737700444
      + id         = 1880252
      + main       = {
          + feels_like = 299.53
          + grnd_level = 1006
          + humidity   = 93
          + pressure   = 1007
          + sea_level  = 1007
          + temp       = 298.51
          + temp_max   = 299.12
          + temp_min   = 298.09
        }
      + name       = "Singapore"
      + rain       = {
          + "1h" = 1.78
        }
      + sys        = {
          + country = "SG"
          + id      = 2100385
          + sunrise = 1737674086
          + sunset  = 1737717492
          + type    = 2
        }
      + timezone   = 28800
      + visibility = 9000
      + weather    = [
          + {
              + description = "moderate rain"
              + icon        = "10d"
              + id          = 501
              + main        = "Rain"
            },
        ]
      + wind       = {
          + deg   = 350
          + gust  = 0
          + speed = 1.79
        }
    }
null_resource.log_post_request: Creating...
null_resource.log_get_request: Creating...
null_resource.log_weather_data: Creating...
null_resource.log_post_request: Provisioning with 'local-exec'...
null_resource.log_get_request: Provisioning with 'local-exec'...
null_resource.log_get_request (local-exec): Executing: ["/bin/sh" "-c" "      echo \"GET Request Made to https://httpbin.org/get\"\n      echo \"Response Status: 200\"\n      echo \"Origin: $(echo '203.149.193.138')\"\n"]
null_resource.log_post_request (local-exec): Executing: ["/bin/sh" "-c" "      echo \"POST Request Made to https://httpbin.org/post\"\n      echo \"Response Status: 200\"\n      echo \"Payload Sent: $(templatefile('./payloads/test.json.tpl', {\n        name  = var.name,\n        email = var.email,\n        city  = var.city\n      }))\"\n      echo \"Response Body: {\n  \"args\": {}, \n  \"data\": \"{\\n\\\"name\\\": \\\"Bharath\\\",\\n\\\"email\\\": \\\"bharath@example.com\\\",\\n\\\"city\\\": \\\"Singapore\\\"\\n}\\n\", \n  \"files\": {}, \n  \"form\": {}, \n  \"headers\": {\n    \"Accept\": \"application/json\", \n    \"Accept-Encoding\": \"gzip\", \n    \"Content-Length\": \"75\", \n    \"Content-Type\": \"application/json\", \n    \"Host\": \"httpbin.org\", \n    \"User-Agent\": \"Go-http-client/2.0\", \n    \"X-Amzn-Trace-Id\": \"Root=1-67933602-026b6d1437a845da53fc00f4\"\n  }, \n  \"json\": {\n    \"city\": \"Singapore\", \n    \"email\": \"bharath@example.com\", \n    \"name\": \"Bharath\"\n  }, \n  \"origin\": \"203.149.193.138\", \n  \"url\": \"https://httpbin.org/post\"\n}\n | jq .\"\n"]
null_resource.log_weather_data: Provisioning with 'local-exec'...
null_resource.log_weather_data (local-exec): Executing: ["/bin/sh" "-c" "      echo \"Weather data for Singapore:\"\n      echo \"Temperature: 298.51K\"\n      echo \"Humidity: 93%\"\n      echo \"Conditions: $(echo 'moderate rain')\"\n"]
null_resource.log_get_request (local-exec): GET Request Made to https://httpbin.org/get
null_resource.log_post_request (local-exec): POST Request Made to https://httpbin.org/post
null_resource.log_get_request (local-exec): Response Status: 200
null_resource.log_weather_data (local-exec): Weather data for Singapore:
null_resource.log_get_request (local-exec): Origin: 203.149.193.138
null_resource.log_post_request (local-exec): Response Status: 200
null_resource.log_weather_data (local-exec): Temperature: 298.51K
null_resource.log_weather_data (local-exec): Humidity: 93%
null_resource.log_post_request (local-exec): /bin/sh: command substitution: line 6: syntax error near unexpected token `'./payloads/test.json.tpl','
null_resource.log_post_request (local-exec): /bin/sh: command substitution: line 6: `templatefile('./payloads/test.json.tpl', {'
null_resource.log_get_request: Creation complete after 0s [id=4147750417640584213]
null_resource.log_post_request (local-exec): Payload Sent:
null_resource.log_weather_data (local-exec): Conditions: moderate rain
null_resource.log_post_request (local-exec): Response Body: {
null_resource.log_post_request (local-exec):   args: {},
null_resource.log_post_request (local-exec):   data: {n"name": "Bharath",n"email": "bharath@example.com",n"city": "Singapore"n}n,
null_resource.log_post_request (local-exec):   files: {},
null_resource.log_post_request (local-exec):   form: {},
null_resource.log_post_request (local-exec):   headers: {
null_resource.log_post_request (local-exec):     Accept: application/json,
null_resource.log_post_request (local-exec):     Accept-Encoding: gzip,
null_resource.log_post_request (local-exec):     Content-Length: 75,
null_resource.log_post_request (local-exec):     Content-Type: application/json,
null_resource.log_post_request (local-exec):     Host: httpbin.org,
null_resource.log_post_request (local-exec):     User-Agent: Go-http-client/2.0,
null_resource.log_post_request (local-exec):     X-Amzn-Trace-Id: Root=1-67933602-026b6d1437a845da53fc00f4
null_resource.log_post_request (local-exec):   },
null_resource.log_post_request (local-exec):   json: {
null_resource.log_post_request (local-exec):     city: Singapore,
null_resource.log_post_request (local-exec):     email: bharath@example.com,
null_resource.log_post_request (local-exec):     name: Bharath
null_resource.log_post_request (local-exec):   },
null_resource.log_post_request (local-exec):   origin: 203.149.193.138,
null_resource.log_post_request (local-exec):   url: https://httpbin.org/post
null_resource.log_post_request (local-exec): }
null_resource.log_post_request (local-exec):  | jq .
null_resource.log_weather_data: Creation complete after 0s [id=6227968483790988355]
null_resource.log_post_request: Creation complete after 0s [id=1303289575698258809]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

humidity = 93
temperature = 298.51
weather_data = {
  "base" = "stations"
  "clouds" = {
    "all" = 75
  }
  "cod" = 200
  "coord" = {
    "lat" = 1.2897
    "lon" = 103.8501
  }
  "dt" = 1737700444
  "id" = 1880252
  "main" = {
    "feels_like" = 299.53
    "grnd_level" = 1006
    "humidity" = 93
    "pressure" = 1007
    "sea_level" = 1007
    "temp" = 298.51
    "temp_max" = 299.12
    "temp_min" = 298.09
  }
  "name" = "Singapore"
  "rain" = {
    "1h" = 1.78
  }
  "sys" = {
    "country" = "SG"
    "id" = 2100385
    "sunrise" = 1737674086
    "sunset" = 1737717492
    "type" = 2
  }
  "timezone" = 28800
  "visibility" = 9000
  "weather" = [
    {
      "description" = "moderate rain"
      "icon" = "10d"
      "id" = 501
      "main" = "Rain"
    },
  ]
  "wind" = {
    "deg" = 350
    "gust" = 0
    "speed" = 1.79
  }
}
bharathkumardasaraju@terraform-http-provider$
