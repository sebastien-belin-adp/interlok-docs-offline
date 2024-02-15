# interlok-docs-offline

This project build and offline version of [interlok-docs](https://github.com/adaptris/interlok-docs).

It uses [Neutralino.js](https://neutralino.js.org/) to render the documentation HTML pages on an offline computer by running a local server.

To build the project the offline documentation you need to install Neutralino.js by following their [documentation](https://neutralino.js.org/docs).

## Installing neu CLI

```sh
npm install -g @neutralinojs/neu
```

## Download neutralinojs binary files

```sh
neu update
```

## Run your application

```sh
cd myapp
neu run
```

## Building your application

```sh
neu build --release
```
