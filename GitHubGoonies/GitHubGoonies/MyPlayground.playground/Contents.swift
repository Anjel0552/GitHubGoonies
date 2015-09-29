//: Playground - noun: a place where people can play

import UIKit

let API_ROOT = "https://api.github.com"

class GitHubRequest: NSObject {
    
    class func requestUserInfo(username: String, completion: (responseInfo: AnyObject?) -> ()) {
        
        let userURL = API_ROOT + "/users/" + username
        
        print(userURL)
        
        if let url = NSURL(string: userURL){
            
            let request = NSURLRequest(URL: url)
            
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
                
                print(data)
                
            })
            
            task.resume()
        }
        
    }
    
    class func request(info: [String:AnyObject], completion: (responseInfo: AnyObject?) -> ()) {
        
        
        
    }
    
}



GitHubRequest.requestUserInfo("anjel0552") { (responseInfo) -> () in


}






