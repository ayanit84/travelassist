package com.infosys.hackathon.travelassist.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.infosys.hackathon.travelassist.utils.ServiceEndpoint;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {
		"com.infosys.hackathon.travelassist.controllers",
		"com.infosys.hackathon.travelassist.services" })
public class ApplicationConfiguration extends WebMvcConfigurerAdapter {

	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/pages/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;

	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/**").addResourceLocations("/");
	}

	@Bean
	public ServiceEndpoint serviceEndpoint() {
		return new ServiceEndpoint();
	}

	// @Override
	// public void addInterceptors(InterceptorRegistry registry) {
	// registry.addInterceptor(new CountryInterceptor());
	// }
}
