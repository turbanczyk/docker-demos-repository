package com.example.client;

import com.example.client.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ClientApplication {

    private static CarService carService;

    @Autowired
    public ClientApplication(CarService carService) {
        this.carService = carService;
    }

    public static void main(String[] args) {
        SpringApplication.run(ClientApplication.class, args);

        String url = "http://server-instance:8080/api/getCar";
        System.out.println(carService.getCar(url));
    }

}
