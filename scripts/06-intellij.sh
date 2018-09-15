#!/usr/bin/env bash

if [[ ! -d $HOME/.IdeaIC2017.2 ]]; then
    mv /settings/IdeaIC2017.2 $HOME/.IdeaIC2017.2
    chown -R $DOCKER_USER:$DOCKER_GROUP $HOME/.IdeaIC2017.2
fi

if [[ ! -f $HOME/.m2/settings.xml ]]; then
    mkdir -p $HOME/.m2
    mv /settings/settings.xml $HOME/.m2
    chown -R $DOCKER_USER:$DOCKER_GROUP $HOME/.m2
fi

