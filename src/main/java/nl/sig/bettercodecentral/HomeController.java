package nl.sig.bettercodecentral;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @RequestMapping("/")
    public String index() {
        return "Hello there! Warm Welcome to Better Code Central!";
    }

}
