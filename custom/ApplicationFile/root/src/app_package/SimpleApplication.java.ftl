package ${packageName};

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class ${applicationName} extends Application {
    protected static Context mContext;
    protected static ${applicationName} mInstence;
    private static final List<Activity> mActivities =
            Collections.synchronizedList(new LinkedList<Activity>());

    @Override
    public void onCreate() {
        super.onCreate();
        mContext = getApplicationContext();
        mInstence = this;
        registerActivityListener();
    }

    public static Context getContext() {
        return mContext;
    }

    public static ${applicationName} getInstence() {
        return mInstence;
    }

    /**
     * @param activity 作用说明 ：添加一个activity到管理里
     */
    private void addActivity(Activity activity) {
        mActivities.add(activity);
    }

    /**
     * @param activity 作用说明 ：删除一个activity在管理里
     */
    private void removeActivity(Activity activity) {
        mActivities.remove(activity);
    }

    /**
     * 结束所有Activity
     */
    private void finishAllActivity() {
        if (mActivities == null) {
            return;
        }
        for (Activity activity : mActivities) {
            activity.finish();
        }
        mActivities.clear();
    }

    /**
     * 退出应用程序
     */
    public void appExit() {
        finishAllActivity();
    }

    private void registerActivityListener() {
        registerActivityLifecycleCallbacks(new ActivityLifecycleCallbacks() {
            @Override
            public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
                //监听到 Activity 创建，将其添加到 mActivities 中
                addActivity(activity);
            }

            @Override
            public void onActivityStarted(Activity activity) {

            }

            @Override
            public void onActivityResumed(Activity activity) {

            }

            @Override
            public void onActivityPaused(Activity activity) {

            }

            @Override
            public void onActivityStopped(Activity activity) {

            }

            @Override
            public void onActivitySaveInstanceState(Activity activity, Bundle outState) {

            }

            @Override
            public void onActivityDestroyed(Activity activity) {
                if (null == mActivities || mActivities.isEmpty()){
                    return;
                }
                //监听到 Activity 销毁，从 mActivities 中删除 Activity
                removeActivity(activity);
            }
        });
    }
}