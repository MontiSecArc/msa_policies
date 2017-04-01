# About
This project bundles graph query inspections and graph query fixes that can be applied using the [MontiSecArc IntelliJ Language Plugin](https://github.com/MontiSecArc/intellij_msa_language_plugin/releases/latest).

# Integration with Gradle and Artifactory
```
buildscript {
    repositories {
        maven {
            url 'http://${ARTIFACTORY_HOST}/artifactory/plugins-release'
        }
    }
}

artifactory {
    contextUrl = "http://${ARTIFACTORY_HOST}/artifactory"   //The base Artifactory URL if not overridden by the publisher/resolver
    publish {
        repository {
            repoKey = 'intellij_plugins_snapshot_local'
            maven = true
        }
    }
    resolve {
        repository {
            repoKey = 'intellij_plugins_snapshot'
            maven = true
        }
    }
}

dependencies {
    compile 'de.monticore.lang.montisecarc:Policies:0.7+'
}
``` 
