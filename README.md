# spring-runner-test

This is a Java Spring Boot project that implements a CommandLineRunner component that does an infinite loop.
However, the problem is that normally when executing a JUnit test, SpringBootTest fires up and executes the
CommandLineRunner implementation that does an infinite loop and never executes the JUnit test in the "test"
phase.

This example shows how you can utilize `spring.profiles.active=test` environment variable to set a "test" mode that
bypasses the CommandLineRunner implementation and will execute an JUnit class that is looking for the
`@ActiveProfiles("test")` annotation.

# Normal Mode Execution

```
mvn spring-boot:run -Dspring-boot.run.profiles=prod
```
