package nl.innovate.statAPI;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorld {

    @RequestMapping()
    public String helloWorld() { return "Welkom op deze statAPI pagina."; }

    @RequestMapping("/landing")
    public String landing() {
        return "<html><head><title>Welkom</title><head>" +
                "<body><b>Hallo,</b><br>gebruik de api</body></html>";
    }

}
