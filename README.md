# Ambient monitoring with BME680 and ESP32-S2

This is largely based on some examples in the [esp-idf](https://github.com/espressif/esp-idf/blob/master/examples/) repository.

This project aims to perform the following tasks on an ESP32-S2
- [x] Display the internal status with an LED
- [x] Connect to WiFi
- [x] Perform HTTP requests
- [ ] Read the BME680 chip

## Requirements

You need an **ESP32-S2** with a **BME680** connect through I2C.

This is currently set up using a Nix flake.

## Build and Flash

Run `idf.py -p PORT flash monitor` to build, flash and monitor the project.

(To exit the serial monitor, type ``Ctrl-]``.)

See the [Getting Started Guide](https://docs.espressif.com/projects/esp-idf/en/latest/get-started/index.html) for full steps to configure and use ESP-IDF to build projects.

