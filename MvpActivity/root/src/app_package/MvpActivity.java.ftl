package ${packageName}.mvp.activity;

import ${superClassFqcn};
import android.os.Bundle;
<#if (includeCppSupport!false) && generateLayout>
import android.widget.TextView;
</#if>

public class ${activityClass} extends AppCompatActivity implements ${activityClass}Imple{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
		<#if generateLayout>
        setContentView(R.layout.${layoutName});
		
		initView();
       <#include "../../../../common/jni_code_usage.java.ftl">
		<#elseif includeCppSupport!false>

        // Example of a call to a native method
        android.util.Log.d("${activityClass}", stringFromJNI());
		</#if>
    }
	<#include "../../../../common/jni_code_snippet.java.ftl">
	
	private void initView() {
		// GET INSTANCE OF PRESENTER
        new ${activityClass}Presenter(this,this);
    }
}
