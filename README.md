# Introduction 
FHIR Implementation Guide Toolbox using `bonfhir/ig-toolbox`

## Requirements

- Docker
- VSCode with devcontainer extension installed

## Setup

Open project with VSCode using devcontainers so that you dont have to install all the tooling required to build IG (rails, node, jekyll etc...)

Run task named `Update IG Publisher` the first time you open the project

Then run task `Run IG Publisher` to build the IG website (be patient it take few minutes to build the site, each freaking time !)

You can then open up [Implementation Guide](output/index.html)
Issues and errors are listed in [QA](output/qa.html)