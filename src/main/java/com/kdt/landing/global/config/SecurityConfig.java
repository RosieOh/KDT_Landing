package com.kdt.landing.global.config;

<<<<<<< HEAD
import com.kdt.landing.domain.member.service.CustomUserDetailsService;
=======
//import com.kdt.landing.domain.member.service.CustomUserDetailsService;
>>>>>>> 948ed3d6b7135271b5bc92ce5693c0a636e372cc
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.header.writers.frameoptions.XFrameOptionsHeaderWriter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Log4j2
@Configuration
@RequiredArgsConstructor
@EnableGlobalMethodSecurity(prePostEnabled = true)
@EnableWebSecurity
public class SecurityConfig {

<<<<<<< HEAD
    private final CustomUserDetailsService userDetailsService;
=======
//    private final CustomUserDetailsService userDetailsService;
>>>>>>> 948ed3d6b7135271b5bc92ce5693c0a636e372cc

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        log.info("-------------------  filter Chain  ------------------");

        http.csrf(AbstractHttpConfigurer::disable)
//            .cors(AbstractHttpConfigurer::disable)
            .authorizeHttpRequests((authorizeRequests) -> {authorizeRequests.requestMatchers(new AntPathRequestMatcher("**")).permitAll();})
            .formLogin((formLogin) -> formLogin
                        .loginPage("/member/login")
                        .failureUrl("/member/loginFail")
                        .loginProcessingUrl("/member/loginPro")
                        .defaultSuccessUrl("/")
                        // default 값은 username 으로 잡혀 있기 떄문에 오류 발생
                        .usernameParameter("email")
                        .passwordParameter("password"))
            .logout((logout) -> logout.logoutUrl("/logout").logoutSuccessUrl("/"))
            .exceptionHandling((exceptionHandling) -> exceptionHandling.authenticationEntryPoint(new CustomAuthenticationEntryPoint()))
            .headers((headers) -> headers.addHeaderWriter(new XFrameOptionsHeaderWriter(XFrameOptionsHeaderWriter.XFrameOptionsMode.SAMEORIGIN)));
        return http.build();
    }


    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public WebSecurityCustomizer webSecurityCustomizer(){
        log.info("-------------------- WebSecurity ----------------------");
        return (web) -> web.ignoring().requestMatchers(PathRequest.toStaticResources().atCommonLocations());
    }
}