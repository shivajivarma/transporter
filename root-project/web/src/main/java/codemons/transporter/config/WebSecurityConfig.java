package codemons.transporter.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

import codemons.transporter.service.security.LoginDetailsService;

@Configuration
@ComponentScan(basePackageClasses = LoginDetailsService.class)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
     private UserDetailsService userDetailsService;
 
     @Autowired
     public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
         auth.userDetailsService(userDetailsService);//.passwordEncoder(passwordencoder());
     }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web
                .ignoring()
                .antMatchers("/assets/**", "/rest/**", "/app/**", "/"); // #3
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/","/signup","/about").permitAll() // #4
                .antMatchers("/admin/**").hasAuthority("ROLE_ADMIN") // #6
                .antMatchers("/user/**").hasAnyAuthority("ROLE_ADMIN,ROLE_USER")
                .anyRequest()
                    .permitAll()
                .and()
                    .formLogin()
                        .loginPage("/login")
                        .failureUrl("/login?error")
                        .defaultSuccessUrl("/login/success")
                        .permitAll()
                .and()
                    .logout()
                        .logoutSuccessUrl("/login?logout").permitAll()
                .and()
                    .exceptionHandling().accessDeniedPage("/403")
                .and()
                    .csrf();
    }

   /* @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .inMemoryAuthentication()
                .withUser("admin").password("admin").roles("ADMIN", "USER").and()
                .withUser("user").password("user").roles("USER");
    }*/
 
 /*@Bean(name="passwordEncoder")
    public PasswordEncoder passwordencoder(){
     return new BCryptPasswordEncoder();
    }*/
}