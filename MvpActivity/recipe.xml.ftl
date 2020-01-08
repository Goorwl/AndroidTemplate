<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <instantiate from="root/src/app_package/MvpActivity.${ktOrJavaExt}.ftl"
                 to="${mvpPath}activity/${activityClass}.${ktOrJavaExt}" />
    <open file="${mvpPath}activity/${activityClass}.${ktOrJavaExt}" />

	<instantiate from="root\src\app_package\Config.java.ftl"
                 to="${mvpPath_util}/Config.java"/>

	<#-- 打开创建的文件 -->
    <open file="${mvpPath}activity/${activityClass}.java"/>

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

<#-- 当选中layout 为true 时才会去创建该布局 -->
<#if generateLayout>
<#-- 创建activity 布局 -->
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>
</#if>

<#if needPresenter>
    <instantiate from="root/src/app_package/MvpPres.java.ftl"
                 to="${mvpPath}/pres/${activityClass}Pres.java"/>
</#if>

<#if needImple>
    <instantiate from="root/src/app_package/MvpImple.java.ftl"
                 to="${mvpPath}/imple/${activityClass}Imple.java"/>
</#if>

</recipe>
