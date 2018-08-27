<?xml version="1.0"?>
<recipe>

  <instantiate from="root/src/app_package/SimpleApplication.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${applicationName}.java" />
  <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
  <open file="${escapeXmlAttribute(srcOut)}/${applicationName}.java" />
</recipe>
