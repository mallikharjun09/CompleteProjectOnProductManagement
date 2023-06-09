package com.tmf.products.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("com.tmf")
@EnableTransactionManagement
public class AppConfig {
	@Bean
	public ViewResolver getView() {
		InternalResourceViewResolver res = new InternalResourceViewResolver();
		res.setPrefix("WEB-INF/views/");
		res.setSuffix(".jsp");
		return res;
	}
}
