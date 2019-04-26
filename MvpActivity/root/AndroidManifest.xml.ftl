<#import "../../common/shared_manifest_macros.ftl" as manifestMacros>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <application>
        <activity android:name=".mvp.activity.${activityClass}"
            <#if isNewProject>
            android:label="@string/app_name"
            </#if>
            <#if hasNoActionBar>
            android:theme="@style/${themeNameNoActionBar}"
            <#elseif !(hasApplicationTheme!false)>
            android:theme="@style/${themeName}"
            </#if>
            <#if buildApi gte 16 && parentActivityClass != "">android:parentActivityName="${parentActivityClass}"</#if>>
            <#if parentActivityClass != "">
            <meta-data android:name="android.support.PARENT_ACTIVITY"
                android:value="${parentActivityClass}" />
            </#if>
            <@manifestMacros.commonActivityBody />
        </activity>
    </application>
</manifest>
