package com.raseals.spring.runner;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest
@ActiveProfiles("test")
public class FooTest
{
    @Test
    public void springRunnerUnitTest()
    {
        assertTrue(true);
    }
}
