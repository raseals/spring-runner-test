package com.raseals.spring.runner.components;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;

@Component
@Profile("!test")
@Slf4j
public class MyCommandLineRunner implements CommandLineRunner
{
    @Override
    public void run(String... args) throws Exception
    {
        do
        {
            log.debug("Sleep for 1s");

            // sleep for 1s
            Thread.sleep(1000);
        }
        while (true);
    }
}
