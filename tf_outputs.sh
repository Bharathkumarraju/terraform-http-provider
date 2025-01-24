bharathkumardasaraju@terraform-http-provider$ terraform plan
data.http.weather: Reading...
data.http.weather: Read complete after 0s [id=https://api.openweathermap.org/data/2.5/weather?q=Singapore&appid=dc7bd84988c82bb5771234]

Changes to Outputs:
  + humidity     = 95
  + temperature  = 298.24
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
      + dt         = 1737697922
      + id         = 1880252
      + main       = {
          + feels_like = 299.29
          + grnd_level = 1007
          + humidity   = 95
          + pressure   = 1008
          + sea_level  = 1008
          + temp       = 298.24
          + temp_max   = 299.1
          + temp_min   = 298.09
        }
      + name       = "Singapore"
      + rain       = {
          + "1h" = 1.54
        }
      + sys        = {
          + country = "SG"
          + id      = 2100385
          + sunrise = 1737674086
          + sunset  = 1737717492
          + type    = 2
        }
      + timezone   = 28800
      + visibility = 8000
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
          + speed = 3.09
        }
    }

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
bharathkumardasaraju@terraform-http-provider$ terraform apply --auto-approve
data.http.weather: Reading...
data.http.weather: Read complete after 0s [id=https://api.openweathermap.org/data/2.5/weather?q=Singapore&appid=dc7bd84988c82bb57791199900fee5f6]

Changes to Outputs:
  + humidity     = 95
  + temperature  = 298.24
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
      + dt         = 1737697922
      + id         = 1880252
      + main       = {
          + feels_like = 299.29
          + grnd_level = 1007
          + humidity   = 95
          + pressure   = 1008
          + sea_level  = 1008
          + temp       = 298.24
          + temp_max   = 299.1
          + temp_min   = 298.09
        }
      + name       = "Singapore"
      + rain       = {
          + "1h" = 1.54
        }
      + sys        = {
          + country = "SG"
          + id      = 2100385
          + sunrise = 1737674086
          + sunset  = 1737717492
          + type    = 2
        }
      + timezone   = 28800
      + visibility = 8000
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
          + speed = 3.09
        }
    }

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

humidity = 95
temperature = 298.24
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
  "dt" = 1737697922
  "id" = 1880252
  "main" = {
    "feels_like" = 299.29
    "grnd_level" = 1007
    "humidity" = 95
    "pressure" = 1008
    "sea_level" = 1008
    "temp" = 298.24
    "temp_max" = 299.1
    "temp_min" = 298.09
  }
  "name" = "Singapore"
  "rain" = {
    "1h" = 1.54
  }
  "sys" = {
    "country" = "SG"
    "id" = 2100385
    "sunrise" = 1737674086
    "sunset" = 1737717492
    "type" = 2
  }
  "timezone" = 28800
  "visibility" = 8000
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
    "speed" = 3.09
  }
}
bharathkumardasaraju@terraform-http-provider$

