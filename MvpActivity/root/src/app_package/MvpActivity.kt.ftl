package ${packageName}.mvp.activity

import ${packageName}.mvp.imple.${activityClass}Imple
import ${packageName}.mvp.pres.${activityClass}Pres
import ${superClassFqcn}
import android.os.Bundle
import ${packageName}.R

class ${activityClass} : AppCompatActivity(), ${activityClass}Imple {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})
        initView()
    }

    private fun initView() { // GET INSTANCE OF PRESENTER
        ${activityClass}Pres(this, this)
    }
}