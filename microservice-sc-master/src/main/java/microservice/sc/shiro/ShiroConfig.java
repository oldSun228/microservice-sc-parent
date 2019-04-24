package microservice.sc.shiro;

import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.cache.ehcache.EhCacheManager;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.filter.authc.AnonymousFilter;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.web.filter.DelegatingFilterProxy;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import java.util.LinkedHashMap;
import java.util.Map;

@Configuration
public class ShiroConfig {

    @Value("${shiro.loginUrl}")
    private String masterLoginUrl;

    @Value("${shiro.jessionid}")
    private String jessionId;

    /**
     * FilterRegistrationBean
     *
     * @return
     */
    @Bean
    public FilterRegistrationBean filterRegistrationBean() {
        FilterRegistrationBean filterRegistration = new FilterRegistrationBean();
        filterRegistration.setFilter(new DelegatingFilterProxy("shiroFilter"));
        filterRegistration.setEnabled(true);
        filterRegistration.addUrlPatterns("/*");
        filterRegistration.setDispatcherTypes(DispatcherType.REQUEST);
        return filterRegistration;
    }

    /**
     * @return
     * @see ShiroFilterFactoryBean
     */
    @Bean(name = "shiroFilter")
    public ShiroFilterFactoryBean shiroFilter() {
        ShiroFilterFactoryBean bean = new MShiroFilterFactoryBean(); //指向自定义过滤器，自定义过滤器对js/css等忽略
        bean.setSecurityManager(securityManager());
        //配置shiro默认登录界面地址，前后端分离中登录界面跳转应由前端路由控制，后台仅返回json数据
        bean.setLoginUrl(masterLoginUrl);
        // 登录成功后要跳转的链接 自行处理。不用shiro进行跳转
        // bean.setSuccessUrl("user/index");
        //未授权界面;
        //bean.setUnauthorizedUrl("/user/unauth");


        Map<String, Filter> filters = new LinkedHashMap<>();
        filters.put("anon", new AnonymousFilter());
        bean.setFilters(filters);
        //shiro配置过滤规则少量的话可以用hashMap,数量多了要用LinkedHashMap,保证有序，原因未知
        Map<String, String> chains = new LinkedHashMap<>();
        chains.put("/login", "anon");
        chains.put("/loginForm", "anon");
        chains.put("/favicon.ico", "anon");
        chains.put("/**", "authc");
        bean.setFilterChainDefinitionMap(chains);
        return bean;
    }

    /**
     * @return
     * @see org.apache.shiro.mgt.SecurityManager
     */
    @Bean(name = "securityManager")
    public DefaultWebSecurityManager securityManager() {
        DefaultWebSecurityManager manager = new DefaultWebSecurityManager();
        manager.setRealm(userRealm());
        // 注入缓存管理器;
//        manager.setCacheManager(cacheManager());
        // 会话管理
        manager.setSessionManager(defaultWebSessionManager());
        return manager;
    }

    @Bean
    public RedisSessionDao getRedisSessionDao() {
        return new RedisSessionDao();
    }

    /**
     * @return
     * @see DefaultWebSessionManager
     */
    @Bean(name = "sessionManager")
    public DefaultWebSessionManager defaultWebSessionManager() {
//        DefaultWebSessionManager sessionManager = new DefaultWebSessionManager();
        CustomSessionManager sessionManager = new CustomSessionManager();
//        sessionManager.setCacheManager(cacheManager());
        sessionManager.setGlobalSessionTimeout(43200000); //12小时
        sessionManager.setDeleteInvalidSessions(true);
        sessionManager.setSessionDAO(getRedisSessionDao());
        sessionManager.setSessionValidationSchedulerEnabled(true);// 是否定时检查session
        sessionManager.setDeleteInvalidSessions(true);// 删除过期的session
        sessionManager.setSessionIdCookie(getSessionIdCookie());
        return sessionManager;
    }

    /**
     * 给shiro的sessionId默认的JSSESSIONID名字改掉
     *
     * @return
     */
    @Bean(name = "sessionIdCookie")
    public SimpleCookie getSessionIdCookie() {
        SimpleCookie simpleCookie = new SimpleCookie(jessionId);
        return simpleCookie;
    }

    /**
     * @return
     * @see UserRealm--->AuthorizingRealm
     */
    @Bean
    @DependsOn(value = "lifecycleBeanPostProcessor")
    public UserRealm userRealm() {
        UserRealm userRealm = new UserRealm();
        //userRealm.setJwtService(jwtService);
        //设置加密方式
//        userRealm.setCredentialsMatcher(credentialsMatcher());
        //userRealm.setCacheManager(cacheManager());
        //设置加密方式
        userRealm.setCredentialsMatcher(hashedCredentialsMatcher());
        return userRealm;
    }

//    @Bean(name = "credentialsMatcher")
//    public CredentialsMatcher credentialsMatcher() {
//        return new RetryLimitHashedCredentialsMatcher();
//    }

	
//	@Bean
//	public EhCacheManager cacheManager() {
//		EhCacheManager cacheManager = new EhCacheManager();
//		cacheManager.setCacheManagerConfigFile("classpath:ehcache.xml");
//		return cacheManager;
//	}

    /**
     * 该类如果不设置为static，@Value注解就无效，原因未知
     *
     * @return
     */
    @Bean
    public static LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
        return new LifecycleBeanPostProcessor();
    }

    @Bean(name = "hashedCredentialsMatcher")
    public HashedCredentialsMatcher hashedCredentialsMatcher() {
        HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
        hashedCredentialsMatcher.setHashAlgorithmName("md5");//散列算法
        hashedCredentialsMatcher.setHashIterations(1024);//散列的次数
        hashedCredentialsMatcher.setStoredCredentialsHexEncoded(true);//转化为16进制(与入库时保持一致)
        return hashedCredentialsMatcher;
    }

}