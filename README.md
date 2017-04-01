# About
This project bundles graph query inspections and graph query fixes that can be applied using the [MontiSecArc IntelliJ Language Plugin](https://github.com/MontiSecArc/intellij_msa_language_plugin/releases/latest).

# Integration with Gradle and Artifactory
```
allprojects {
    repositories {
        maven { url 'https://jitpack.io' }
    }
}

dependencies {
    compile 'com.github.MontiSecArc:msa_policies:0.7.19'
}
``` 
