package microservice.sc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * Created by Administrator on 2018/7/31.
 */
@SpringBootApplication
@ComponentScan({"sc.shiro","microservice.sc"})
public class AppRestApplication {
    public static void main( String[] args ){
        SpringApplication.run(AppRestApplication.class, args);
    }

}
