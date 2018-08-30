<?xml version="1.0"?>
<recipe>

	<instantiate from="root/res/layout/activity_mvp.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />

    <instantiate from="root/res/layout/fragment_mvp.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />

	<instantiate from="root/src/app_package/MVP/MVPFragment.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${classToResource(activityClass)}/${fragmentClass}.java" />

	<instantiate from="root/src/app_package/MVP/MVPActivity.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${classToResource(activityClass)}/${activityClass}.java" />

	<instantiate from="root/src/app_package/MVP/MVPContract.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${classToResource(activityClass)}/${contractClass}.java" />

	<instantiate from="root/src/app_package/MVP/MVPPresenter.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${classToResource(activityClass)}/${presenterClass}.java" />

	<merge from="root/AndroidManifest.xml.ftl"
           	to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

	<#if constraintLayout>
		<merge from="root/build.gradle.ftl"
		to="${escapeXmlAttribute(projectOut)}/build.gradle" />
	</#if>

	<open file="${escapeXmlAttribute(srcOut)}/${classToResource(activityClass)}/${activityClass}.java" />
</recipe>