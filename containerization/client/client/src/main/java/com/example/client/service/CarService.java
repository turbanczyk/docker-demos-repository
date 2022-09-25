package com.example.client.service;

import com.example.client.entity.Car;

import lombok.AllArgsConstructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
@AllArgsConstructor
public class CarService {

    @Autowired private RestTemplateBuilder restTemplateBuilder;

    public Car getCar(String url) {
        RestTemplate restTemplate = restTemplateBuilder.build();
        return restTemplate.getForObject(url, Car.class);
    }

}
