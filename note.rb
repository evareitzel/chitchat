////////////////////////////////////////////////
package.json (v1)
{
  "name": "react-rails-api-project-template-client",
  "version": "0.1.0",
  "private": true,
  "proxy": "http://localhost:3000",
  "engines": {
    "node": "16.x"
  },
  "dependencies": {    
    "@reduxjs/toolkit": "^1.1.0",
    "react": "^17.0.2",
    "react-dom": "^17.0.2", 
    "react-redux": "^7.1.3",   
    "react-router-dom": "^6.10.0",
    "react-scripts": "4.0.3",
    "uuid": "^8.3.2"
  },
  "scripts": {
    "start": "PORT=4000 react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject"
  },
  "eslintConfig": {
    "extends": [
      "react-app"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  }
}


# /// physical therapy student ex

# store 
# configStore()
#  - slices
#   - dispatch routes loading fetch es
# dispatch - GET request

# - Get USER
# - ONE reducer


################################################## PKG JSON
{
  "name": "chitchat-react-client",
  "version": "0.1.0",
  "private": true,
  "proxy": "http://localhost:3000",
  "engines": {
    "node": "16.x"
  },
  "dependencies": {
    "@reduxjs/toolkit": "^1.9.3",
    "axios": "^1.4.0",
    "babel-jest": "^26.6.1",
    "react": "^18.0.0",
    "react-dom": "^18.0.0",
    "react-redux": "^8.1.1",
    "react-router-dom": "^6.10.0",
    "react-scripts": "^5.0.1",
    "redux": "^4.2.1",
    "uuid": "^8.3.2"
  },
  "scripts": {
    "start": "PORT=4000 react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  }
}