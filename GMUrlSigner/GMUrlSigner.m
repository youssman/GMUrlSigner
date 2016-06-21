//
//  GMUrlSigner.m
//  GMUrlSigner
//
//  Created by youssman on 23/03/2015.
//  Copyright (c) 2015. All rights reserved.
//

#import "GMUrlSigner.h"
#include <CommonCrypto/CommonDigest.h>
#include <CommonCrypto/CommonHMAC.h>
#import "GTMStringEncoding.h"

@implementation GMUrlSigner

- (id)init {
  self = [super init];
  if (self) {
    
  }
  return self;
}

- (NSString *) signUrl:(NSString *) url withThisKey:(NSString*) key {
  // Stores the url in a NSData.
  NSData *urlData = [url dataUsingEncoding: NSASCIIStringEncoding];
  
  // URL-safe Base64 coder/decoder.
  GTMStringEncoding *encoding = [GTMStringEncoding rfc4648Base64WebsafeStringEncoding];
  
  // Decodes the URL-safe Base64 key to binary.
  NSData *binaryKey = [encoding decode:key];
  
  // Signs the URL.
  unsigned char result[CC_SHA1_DIGEST_LENGTH];
  CCHmac(kCCHmacAlgSHA1,
         [binaryKey bytes], [binaryKey length],
         [urlData bytes], [urlData length],
         &result);
  NSData *binarySignature = [NSData dataWithBytes:&result length:CC_SHA1_DIGEST_LENGTH];
  
  // Encodes the signature to URL-safe Base64.
  NSString *signature = [encoding encode:binarySignature];
  
  return signature;
}

@end