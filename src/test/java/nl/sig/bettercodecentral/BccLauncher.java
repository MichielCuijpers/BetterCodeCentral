package nl.sig.bettercodecentral;

import java.awt.Desktop;
import java.net.URI;

import org.springframework.boot.builder.SpringApplicationBuilder;

public class BccLauncher {

    private static void startUI() {
        new SpringApplicationBuilder(BccApplication.class).headless(false).run();
    }

    public static void main(String[] args) throws Exception {
        System.setProperty("server.port", "8100");
        startUI();
        Desktop.getDesktop().browse(new URI("http://127.0.0.1:8100"));
    }

}