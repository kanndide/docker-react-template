#!/bin/bash
if [ ! -d /app/$APPNAME ]; then
  cd /app
  create-react-app $APPNAME
fi

if [ "$BULMA_CSS" = true]; then
    echo "Installing Bulma project base..."
    cd /app/$APPNAME
    npm install bulma bulma-extensions moment react-helmet styled-components --save
    npm install --save node-sass-chokidar
    npm install --save npm-run-all
    mv /src/index.css /src/index.scss
    npm install --save react-router
    npm instal --save react-router-dom
fi

if [ "$REDUX" = true ]; then
  echo 'Installing Redux...'
  yarn add redux react-redux
  yarn add redux-devtools --save-dev
fi


cd /app/$APPNAME
npm start