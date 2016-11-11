package com.shamsi.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.web.filter.CharacterEncodingFilter;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    @Qualifier("customUserDetailsService")
    UserDetailsService userDetailsService;

    @Autowired
    CustomSuccessHandler customSuccessHandler;


    @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/**/firstLevel/**", "/", "/welcome").access("hasRole('Customer_Supporter') or hasRole('Technical_Customer_Supporter') or hasRole('Developer') or  hasRole('Designer') or hasRole('DBA') or hasRole('Admin')")
                .antMatchers("/**/secondLevel/**").access("hasRole('Technical_Customer_Supporter') or hasRole('Developer') or  hasRole('Designer') or hasRole('DBA') or hasRole('Admin') ")
                .antMatchers("/**/thirdLevel/**").access("hasRole('Developer') or  hasRole('Designer') or hasRole('DBA') or hasRole('Admin')")
                .antMatchers("/**/fourthLevel/**").access("hasRole('Designer') or hasRole('DBA') or hasRole('Admin')")
                .antMatchers("/**/fifthLevel/**").access("hasRole('DBA') or hasRole('Admin')")
                .antMatchers("/**/sixthLevel/**").access("hasRole('ADMIN')")
                .and().formLogin().loginPage("/login").successHandler(customSuccessHandler)
                .usernameParameter("username").passwordParameter("password")
                .and().csrf()
                .and().exceptionHandling().accessDeniedPage("/Access_Denied");

        CharacterEncodingFilter filter = new CharacterEncodingFilter();
        filter.setEncoding("UTF-8");
        filter.setForceEncoding(true);
        http.addFilterBefore(filter,CsrfFilter.class);
    }

}
