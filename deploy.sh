#!/bin/bash
    echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u subiksha17 -p s1705sha17
    docker tag test subiksha17/my_jenkins
    docker push subiksha17/my_jenkins

