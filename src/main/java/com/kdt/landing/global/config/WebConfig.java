package com.kdt.landing.global.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
public class WebConfig implements WebMvcConfigurer {

//    SpringSecurityDialect는 ThymeLeaf 에서 Spring Security를 활용하기 위한 내용을 설정할 수 있음.
//    @Bean
//    public SpringSecurityDialect securityDialect(){
//        return new SpringSecurityDialect();
//    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**").addResourceLocations("file:///C:/Users/User/IdeaProjects/img_test/");
        registry.addResourceHandler("/cssa/**").addResourceLocations("/webapp/resources/");
        registry.addResourceHandler("/resources/**").addResourceLocations("/WEB-INF/resources/");

    }

    @Bean
    public InternalResourceViewResolver setupViewResolver() {

        InternalResourceViewResolver resolver = new InternalResourceViewResolver();

        resolver.setPrefix("/WEB-INF/view/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

}
