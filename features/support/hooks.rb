
After do |scenario| # executaod depois de cada cenario
    nome_cenario = scenario.name.gsub(' ' , '_').downcase! #toda barra espaco, troque por _
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.driver.browser.save_screenshot(screenshot)
    #Capybara.page.driver.browser.save_screenshot
    embed(screenshot, 'image.png', 'Print Cenario')
end