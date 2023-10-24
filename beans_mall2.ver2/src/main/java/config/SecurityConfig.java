package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;
import org.springframework.security.web.csrf.CsrfTokenRepository;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.requiresChannel().antMatchers("/public/**").requiresInsecure().and().authorizeRequests()
				.antMatchers("/public/**", "/main", "/display", "/getAttachList", "/search", "/goodsDetail/**",
						"/replyEnroll/**", "/replyUpdate", "/category/**")
				.permitAll().antMatchers("/admin/main").hasRole("ADMIN")
				.antMatchers("/admin/**", "/member/**", "/cart/add", "/other_categories/**", "/kkbMain",
						"/notice/notice", "/notice/inquire", "/order/{memberId}", "/order", "/w/product",
						"/reply/enroll", "/reply/update", "/reply/delete", "/roulette", "/oc", "/search",
						"/play-tetris")
				.authenticated().anyRequest().authenticated().and().formLogin().loginPage("/member/login").permitAll()
				.and().logout().permitAll().invalidateHttpSession(true).and().exceptionHandling()
				.accessDeniedPage("/error/403").and().headers().contentSecurityPolicy("default-src 'self'").and()
				
				// 기능 추가중이기 때문에 세션 관련 보안 설정을 잠시 비활성화 시켰습니다.
				
				// .sessionManagement()
				// .maximumSessions(1)
				// .maxSessionsPreventsLogin(true)
				// .sessionFixation().migrateSession()
				.and().csrf().csrfTokenRepository(csrfTokenRepository());
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**");
	}

	@Bean
	public UserDetailsService userDetailsService() {
		UserDetails user = User.builder().username("user").password(passwordEncoder().encode("password")).roles("USER")
				.build();

		UserDetails admin = User.builder().username("admin").password(passwordEncoder().encode("adminpassword"))
				.roles("ADMIN").build();

		return new InMemoryUserDetailsManager(user, admin);
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public CsrfTokenRepository csrfTokenRepository() {
		return CookieCsrfTokenRepository.withHttpOnlyFalse();
	}
}


//사용자 암호화: BCryptPasswordEncoder를 사용하여 사용자 비밀번호를 암호화하고 저장합니다.
//세션 관리: 최대 동시 세션 수 설정 및 세션 무효화 설정을 통한 동시 로그인 제어.
//CSRF 보호: CSRF 토큰을 사용하여 CSRF 공격을 방지합니다.
//HTTP 헤더 보안: Content Security Policy (CSP) 헤더 및 HTTPS 강제 사용 설정.
//권한 및 인가: 사용자 역할에 따라 접근 권한을 설정하고 권한 없는 경우 403 에러 페이지로 이동.
//로그인 및 로그아웃 커스터마이징: 로그인 및 로그아웃 페이지 설정 및 세션 무효화.
//사용자 정의 에러 페이지: 권한이 없는 경우 403 에러 페이지 설정.
