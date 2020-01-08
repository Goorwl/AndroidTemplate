package ${packageName}.mvp.pres;

import android.app.Activity;
import ${packageName}.mvp.imple.${activityClass}Imple;

public class ${activityClass}Pres{

    private Activity mActivity ;
    private ${activityClass}Imple mImple;

    public ${activityClass}Pres(Activity activity, ${activityClass}Imple imple) {
        mActivity = activity;
        mImple = imple;
    }
}