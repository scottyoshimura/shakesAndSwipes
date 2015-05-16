//
//  ViewController.swift
//  swipesShakes
//
//  Created by Scott Yoshimura on 5/14/15.
//  Copyright (c) 2015 west coast dev. All rights reserved.
//
//  this app will simply demonstrate how to do swipes and shakes


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        //lets set up a UISwipeGestureRecognizer with a target of the view controller and we will call the action to the method "swiped" that we will set up
        var swipeRight = UISwipeGestureRecognizer(target: self, action: "swiped:")
        //we need to tell xcode what direction we want to use by calling swipeRight.direction, and we set that to UISwipeGestureRecognizerDirection.right
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        //and then we add this to the view controller
        self.view.addGestureRecognizer(swipeRight)
        
        //lets add up
        var swipeUp = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
        
        //lets add down
        var swipeDown = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeDown)
        
        //lets add left
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
    }
    
    //lets create a function that has a variable of UIGestureRecognizer. The gesture variable is what we use to get the swipe
    func swiped(gesture: UIGestureRecognizer){
        //lets see if the gesture that caused this to take place was a swipe right. we use the ? in case gesture is not a swipe Gesture Recognizer, and we put an if statment around it
            //this checks wether the gesture that caused this function to happen, was indeed a swipeGesture, and if it is than it will create a swipeGesture variable, that we can use to see what direction the swipeGesture went in
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            //lets try a switch, a different type of if statement
                //switches are a good way to try to do a number of different things dependent upon the value of 1 particular thing. so we can have many different cases and on default. it helps reduce the amount of if statements
            //we switch on swipeGesture.direction
            switch swipeGesture.direction{
                //then we look at all the possibilities that we are interested in for the swipeGesture direction, and different things based on what it is
                case UISwipeGestureRecognizerDirection.Right:
                    println("user swiped right")
                
                    //lets add other cases
                case UISwipeGestureRecognizerDirection.Up:
                    println("user swiped up")
                case UISwipeGestureRecognizerDirection.Down:
                    println("user swiped down")
                case UISwipeGestureRecognizerDirection.Left:
                    println("user swiped left")
                
                
                //for a switch you need to have a default option, which is what to do if none of hte cases are true
                default:
                    break //in this case we will break, which just stops the code
                
                
                }
            
            }
        
    }
    //this is called anytime the movement of the iphone moves. override just means we are adding some code to it
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        //we want to see if hte user has just shaken their phone
        if event.subtype == UIEventSubtype.MotionShake {
            println("usershook")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

