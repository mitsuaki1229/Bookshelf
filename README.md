Bookshelf
====

Displaying a list of books.

## Requirement

* [Xcode 13.4.1](https://developer.apple.com/download/)
* [Carthage](https://github.com/Carthage/Carthage)
* [Swiftlint](https://github.com/realm/SwiftLint)

## Install

```shell
$ cd Bookshelf
$ carthage bootstrap --platform iOS --use-xcframeworks
```

## Usage

1. Prepare server and CDN.
2. Set Server URL to Const.kServerEndpoint.
3. Set CDN URL to Const.kCdnEndpoint.
4. Build & open App.

### Server JSON Format

Please look at the BookApiModel..

### Find

* Display book list in server.

### BookDetails

* Display book info.
* Can be saved to MyBooks.

## Licence

This software is released under the MIT License, see LICENSE.md.

## Author

[mitsuaki1229](https://github.com/mitsuaki1229)
