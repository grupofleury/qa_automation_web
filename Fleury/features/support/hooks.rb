require "base64"

Before do
   @validar = ValidandoPage.new


end


Before("@visit") do
    @validar.go
end

After do
    shot_file = page.save_screenshot("log/temp_shot.png")
    screenshot = Base64.encode64(File.open(shot_file, "rb").read)
    embed(screenshot, "image/png", "Screenshot")
end