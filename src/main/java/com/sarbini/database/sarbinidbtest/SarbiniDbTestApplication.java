package com.sarbini.database.sarbinidbtest;

import java.sql.SQLException;

import org.h2.tools.Server;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class SarbiniDbTestApplication {

	public static void main(String[] args) {
		SpringApplication.run(SarbiniDbTestApplication.class, args);
	}
	
	@Value("${db.port}")
    private String h2DbPort;

    @Bean
    public Server server() throws SQLException {
        return Server.createTcpServer("-tcp", "-tcpAllowOthers", "-tcpPort", h2DbPort).start();
    }
}
