# About
This project bundles graph query inspections and graph query fixes that can be applied using the [MontiSecArc IntelliJ Language Plugin](https://git.rwth-aachen.de/ma_buning/msa).

# Integration with Gradle
```
buildscript {
    repositories {
        maven {
            url 'http://138.68.65.103:8081/artifactory/plugins-release'
        }
    }
}

artifactory {
    contextUrl = "http://138.68.65.103:8081/artifactory"   //The base Artifactory URL if not overridden by the publisher/resolver
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