require "appium_lib"

def caps
    { caps: { deviceName: "N",
        platformName: "Android",
        app: (File.join(File.dirname(__FILE__), "app-debug.apk")),
        appPackage: "com.example.heitorcolangelo.buscacep",
        appActivity: "MainActivity",
        newCommandTimeout: "3600",
        appium_lib: {
          wait: 20,
          debug: false
        }
      }
    }
end

Appium::Driver.new(caps)
Appium.promote_appium_methods Object
