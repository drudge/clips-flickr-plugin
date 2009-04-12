//
//  FlickrImageGrabber.m
//  Test oembed
//
//  Created by Nicholas Penree on 9/27/08.
//  Copyright 2008 Conceited Software. All rights reserved.
//

#import "CAFlickrImageGrabber.h"

//@implementation NSURLConnection (blih)//damn clips
//
//- (void)release
//{
//	NSLog (@"OH NOES");
//}
//
//@end

@implementation CAFlickrImageGrabber

@synthesize apiEndpointURL;

+ (BOOL) hasExpectedPrefix:(NSString *)anURL
{
	NSString *someURL = [anURL lowercaseString];
	
	BOOL hasPrefix = ([someURL hasPrefix:@"http://www.flickr.com/photos/"] ||
					  [someURL hasPrefix:@"http://flickr.com/photos/"]);
	
	return hasPrefix;
}

- (NSString *)apiEndpointURL
{
	return @"http://www.flickr.com/services/oembed/";
}

@end
