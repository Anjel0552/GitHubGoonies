//
//  Goonies.swift
//  GitHubGoonies
//
//  Created by Anjel Villafranco on 9/28/15.
//  Copyright © 2015 Anjel Villafranco. All rights reserved.
//

import Foundation
//Normal
// new class file -> GoonieDetailViewController
// layout the detail view controller to display a;; the simple and full detail info
//add a plus button to the top right of the navigationbar on the Goonie view 



//HARD
// add a new view controller to the storyboard beloew the goonies view controller
//connect the plus button with a present seque
//add a textfield, submit button to presented viewcontroller
//add a cancel button the dismisses the presented viewcontroller

// simple detail

//username
//avatar

// full detail

//fullname
//location
//email address
//bio
//followers
//following
//repo count
//gist count



let API_ROOT = "https://api.github.com"

let myProfileURL = API_ROOT + "/users/anjel0552"

var users: [[String:AnyObject?]] = [
[
    "login": "Anjel0552",
    "id": 14432987,
    "avatar_url": "https://avatars.githubusercontent.com/u/14432987?v=3",
    "gravatar_id": "",
    "url": "https://api.github.com/users/Anjel0552",
    "html_url": "https://github.com/Anjel0552",
    "followers_url": "https://api.github.com/users/Anjel0552/followers",
    "following_url": "https://api.github.com/users/Anjel0552/following{/other_user}",
    "gists_url": "https://api.github.com/users/Anjel0552/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/Anjel0552/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/Anjel0552/subscriptions",
    "organizations_url": "https://api.github.com/users/Anjel0552/orgs",
    "repos_url": "https://api.github.com/users/Anjel0552/repos",
    "events_url": "https://api.github.com/users/Anjel0552/events{/privacy}",
    "received_events_url": "https://api.github.com/users/Anjel0552/received_events",
    "type": "User",
    "site_admin": false,
    "name": "Anjel Villafranco",
    "company": nil,
    "blog": nil,
    "location": "Atlanta, Georgia",
    "email": "anjelvillafranco0552@gmail.com",
    "hireable": nil,
    "bio": nil,
    "public_repos": 1,
    "public_gists": 0,
    "followers": 1,
    "following": 1,
    "created_at": "2015-09-20T21:07:52Z",
    "updated_at": "2015-09-23T19:14:34Z"
    
    ]
    
]

class GitHubRequest: NSObject {
    
    class func requestUserInfo(username: String, completion: (responseInfo: AnyObject?) -> ()) {
    
        let userURL = API_ROOT + "/users/" + username
        
        print(userURL)
        
        if let url = NSURL(string: userURL){
        
            let request = NSURLRequest(URL: url)
            
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
                
                if let data = data {
                    
                    do {
                        
                        let info = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers)
                        
                        completion(responseInfo: info)
                        
                        print(info)
                        
                    } catch let error {
                        
                        print(error)
                        
                    
                    }

                    
                }
                
                
              //  print(data)

            })
         
            task.resume()
        }
    
    }

    class func request(info: [String:AnyObject], completion: (responseInfo: AnyObject?) -> ()) {
    
        
    
    }

}








