package microservice.sc.shiro;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.SessionListener;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * @Author 范国顺
 * @Date: Created in 13:48 2018/5/26
 * @Description:
 */
public class MySessionListener implements SessionListener {
    private final AtomicInteger sessionCount = new AtomicInteger(0);

    @Override
    public void onStart(Session session) {
        sessionCount.incrementAndGet();
    }

    @Override
    public void onStop(Session session) {
        sessionCount.decrementAndGet();
    }

    @Override
    public void onExpiration(Session session) {
        sessionCount.decrementAndGet();
    }

    public int getSessionCount() {
        return sessionCount.get();
    }
}
