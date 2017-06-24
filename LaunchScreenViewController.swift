//
//  LaunchScreenViewController.swift
//  SplitCheck
//
//  Created by Luis Puentes on 6/20/17.
//  Copyright © 2017 LuisPuentes. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "randomBackground")?.draw(in: self.view.bounds)
            
        if let image: UIImage = UIGraphicsGetImageFromCurrentImageContext(){
            UIGraphicsEndImageContext()
            self.view.backgroundColor = UIColor(patternImage: image)
        }
    }
        
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        titleLabel.center.x = view.center.x // This places the label in the center x of the view
        titleLabel.center.x -= view.bounds.width // This places it on the left of the view with the width = to the bounds' width of the view
            
        // Animate this from left to right
        UIView.animate(withDuration: 1.5, delay: 0, options: [.curveEaseOut], animations: { self.titleLabel.center.x += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: { success in
            if success {
                sleep(2)
                self.transitionFromLaunchToMainCheckVC()
            }
        })
    }
        
    func transitionFromLaunchToMainCheckVC() {
            
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "launchToMainCheckVC")
        self.present(nextViewController, animated:true, completion:nil)
    }
        
    @IBOutlet weak var titleLabel: UILabel!
}

