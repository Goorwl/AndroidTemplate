package ${packageName}.mvp.presenter;

import android.app.Activity;
import ${packageName}.mvp.imple.${activityClass}Imple;

public class ${activityClass}Presenter{

    private Activity mActivity ;
    private ${activityClass}Imple mImple;

    public ${activityClass}Presenter(Activity activity, ${activityClass}Imple imple) {
        mActivity = activity;
        mImple = imple;
    }
}