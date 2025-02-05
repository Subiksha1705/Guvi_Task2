#!/bin/bash
    echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u Subiksha17 -p s1705sha17
    docker tag test Subiksha17/Guvi_Task2
    docker push Subiksha17/Guvi_Task2
    
