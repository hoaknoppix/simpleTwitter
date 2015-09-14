//
//  TwitterClient.swift
//  simpleTwitter
//
//  Created by hoaqt on 9/14/15.
//  Copyright (c) 2015 hoaqt. All rights reserved.
//

import UIKit


let twitterConsumerKey = "uMVglRsIPGSwY8SHtauT22vEH"
let twitterCosnsumerSecret = "gGsYSTIjJIuNV2neQppLtGvwPGeKq4iOZVx39Oxe35Pj15IEb3"
let twitterBaseURL = NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1RequestOperationManager {


    class var sharedInstance : TwitterClient {
        struct Static {
            static let instance =        TwitterClient(baseURL: twitterBaseURL, consumerKey: twitterConsumerKey, consumerSecret: twitterCosnsumerSecret)
        }
        
        return Static.instance
    }
}
