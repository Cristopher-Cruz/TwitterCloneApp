//
//  TweetViewController.swift
//  Twitter
//
//  Created by christopher cruz on 9/28/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tweetTextView: UITextView!
    
    
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
        
    }
    
    @IBAction func tweet(_ sender: Any) {
        if (!tweetTextView.text.isEmpty) {
            TwitterAPICaller.client?.postTweet(tweetString: tweetTextView.text, success: {
                self.dismiss(animated: true, completion: nil)
            }, failure: { (error) in
                print("Error posting tweet \(error)")
                self.dismiss(animated: true, completion: nil)
            })
        } else {
            self.dismiss(animated: true, completion: nil)
            
        }
    }
    
    

    
    
    
    
    
    
    
    
    
    
    /*
    @IBAction func Cancel(_ sender: Any) {
        dismiss(animated: true, completion:     nil)
    
    
    }
     @IBOutlet weak var tweettxtview: UITextView!

    @IBAction func tweet(_ sender: Any) {
        if (!tweettxtview.text.isEmpty) {
            TwitterAPICaller.client?.postTweet(tweetString: tweettxtview.text, success: {
            self.dismiss(animated: true, completion: nil)
            },failure: { (error) in
                print("Error posting tweet \(error)")
                self.dismiss(animated: true, completion: nil)
            })
} else {
    self.dismiss(animated: true, completion: nil)
    
}
}
 */
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
