#!/bin/bash

if [[ ! -f /var/www/app/run_setup ]] && [[ "$1" != "-f" ]]; then
    echo "App is already configured, if you need to force the setup, add -f"
    exit 0;
fi

cd /var/www/app

#yarn add @symfony/webpack-encore --dev
#npm install @symfony/webpack-encore --save-dev
#yarn add bootstrap@4.0.0
#yarn add webpack-notifier@^1.6.0 --dev
#
#echo "Copying webpack config..."
#cp -v webpack.config.js.dist webpack.config.js