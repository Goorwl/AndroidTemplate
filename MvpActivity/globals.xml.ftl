<?xml version="1.0"?>
<globals>
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="simpleLayoutName" value="${layoutName}" />
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <#include "../common/common_globals.xml.ftl" />
	<global id="mvpPath" type="string" value="${escapeXmlAttribute(srcOut)}/mvp/"/>
	<global id="mvpPath_util" type="string" value="${escapeXmlAttribute(srcOut)}/utils/"/>
</globals>
