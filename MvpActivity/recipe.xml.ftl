<?xml version="1.0"?>
<recipe>

    <instantiate from="root\src\app_package\MvpActivity.java.ftl"
                 to="${mvpPath}activity/${activityClass}.java"/>
	<instantiate from="root\src\app_package\Config.java.ftl"
                 to="${mvpPath_util}/Config.java"/>
				 
	<merge from="root/AndroidManifest.xml.ftl"
                 to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

	<#-- 打开创建的文件 -->
    <open file="${mvpPath}activity/${activityClass}.java"/>

<#-- 当选中layout 为true 时才会去创建该布局 -->
<#if generateLayout>
<#-- 创建activity 布局 -->
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>
</#if>

<#if needPresenter>
    <instantiate from="root/src/app_package/MvpPresenter.java.ftl"
                 to="${mvpPath}/presenter/${activityClass}Presenter.java"/>
</#if>

<#if needImple>
    <instantiate from="root/src/app_package/MvpImple.java.ftl"
                 to="${mvpPath}/imple/${activityClass}Imple.java"/>
</#if>

</recipe>
