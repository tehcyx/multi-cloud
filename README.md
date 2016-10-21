multi-cloud
===========

Building immutably to continuous delivery with minimal inputs
-------------------------------------------------------------

An O'Reilly Software Architecture Conference workshop project instructed by [Adron Hall](https://github.com/adron).

This document will reflect the instructions used, in order they were applied.

## Local

```bash
npm install express -g
npm install express-generator -g

express .

npm install

DEBUG=multi-cloud:* npm start

mkdir ecosystem/terraform
mkdir ecosystem/packer

git init
echo ".DS_STORE" >> .gitignore && echo "node_modules" >> .gitignore
git add .gitignore

git add --a
git commit -m "initialize repo"
git remote add origin https://github.com/tehcyx/multi-cloud.git
git push --set-upstream origin master
```

## Codeship

Setup commands
```bash
nvm install 4.6.1
npm install
```

Pipeline commands
```bash
npm test
```

## Local

```bash
mkdir test
npm install mocha --save
```

## [Terraform](http://terraform.io)

```bash
brew install terraform
```

## [Packer](http://packer.io)

```bash
brew install packer
```

## Local

```bash
vi ecosystem/terraform/connection.tf
cd ecosystem/terraform
terraform plan
```
