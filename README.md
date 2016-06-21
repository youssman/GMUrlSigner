# GMUrlSigner

[![CI Status](http://img.shields.io/travis/yhi/GMUrlSigner.svg?style=flat)](https://travis-ci.org/yhi/GMUrlSigner)
[![Version](https://img.shields.io/cocoapods/v/GMUrlSigner.svg?style=flat)](http://cocoapods.org/pods/GMUrlSigner)
[![License](https://img.shields.io/cocoapods/l/GMUrlSigner.svg?style=flat)](http://cocoapods.org/pods/GMUrlSigner)
[![Platform](https://img.shields.io/cocoapods/p/GMUrlSigner.svg?style=flat)](http://cocoapods.org/pods/GMUrlSigner)

This example provides a function for generating the URL of signatures required for Google Maps API web service (business account) calls in Objective-C projects.

The original code is available [here](http://gmaps-samples.googlecode.com/svn/trunk/urlsigning/urlsigner.m).

I simply took the necessary code to the URL signature generation and use it in a simple way.

You can test the generated signature with this [tool](https://m4b-url-signer.appspot.com/)

## Installation

### CocoaPods(Recommended)

GMUrlSigner is available through [CocoaPods](http://cocoapods.org).

1. Add `pod 'GMUrlSigner'` to your Podfile.
2. Run `pod install`

### Manual

1. Add all files under `GMUrlSigner/GMUrlSigner` to your project

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```objective-c
#import "GMUrlSigner.h"

// ...

GMUrlSigner *urlSigner = [[GMUrlSigner alloc] init];
//for our example
NSString *address = @"New+York";
NSString *clientId = @"YOURCLIENTID";
NSString *privateKey = @"vNIXE0xscrmjlyV-12Nj_BvUPaw=";

NSString *URLPortionToSign = [NSString stringWithFormat:@"/maps/api/geocode/json?address=%@&sensor=true&client=%@", address, clientId];
//get the signature
NSString *signature = [urlSigner signUrl:URLPortionToSign withThisKey:privateKey];

NSString *FullSignedURL = [NSString stringWithFormat:@"https://maps.googleapis.com%@&signature=%@", URLPortionToSign, signature];
```

## Requirements

- ARC

(If you are having any problems, just select your project -> Build Phases -> Compile Sources, double-click the GMUrlSigner and add `-fobjc-arc`)

## Feed back

Feel free to comment (critical, remarks, ...) the code or propose any kind of optimizations/evolutions.

Cheers ! :beers:

## Links

[the Google Toolbox for Mac](http://google-toolbox-for-mac.googlecode.com/svn/trunk/)

[URL Signing Debugger](https://m4b-url-signer.appspot.com/)

[Original UrlSigner.m](http://gmaps-samples.googlecode.com/svn/trunk/urlsigning/urlsigner.m)

## Author

youssman, [Twitter](https://twitter.com/YHaiti)

## License

GMUrlSigner is available under the MIT license. See the LICENSE file for more info.
