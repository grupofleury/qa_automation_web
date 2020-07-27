Before do
    @home = HomePage.new
    @unidades = UnidadesPage.new 

    page.current_window.resize_to(1440, 900)
end

After do
    screen_page = page.save_screenshot("log/screen.png")
    screenshot = Base64.encode64(File.open(screen_page, "rb").read)
    embed(screenshot, "image/png", "Screenshot_Cenario")
end