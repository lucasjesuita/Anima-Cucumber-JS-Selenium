module.exports = function () {

    this.Given(/^que estou na pagina de cadastro$/, function () {

        // load page
        return helpers.loadPage(page.batistaautomacao.url);
    });
    this.Given(/^"([^"]*)" no campo "([^"]*)"$/, function (keywords,_keyword2) {
        driver.findElement(by.id(_keyword2)).sendKeys(keywords);
      });

      this.When(/^realizo o cadastro do usuario$/, function () {
        driver.findElement(By.xpath("//input[@name='commit']")).submit();
      });

      this.Then(/^visualizo a mensagem de sucesso "([^"]*)"$/, function (expectedAnswer) {
         driver.findElement(By.xpath("//p[text()='"+expectedAnswer+"']"));
      });
    }