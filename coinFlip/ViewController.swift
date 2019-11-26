//
//  ViewController.swift
//  coinFlip
//
//  Created by Leads Computer on 11/25/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isHidden = true
    }

    @IBAction func filpTheCoin(_ sender: UIButton) {
        animate()
        
        let random = arc4random_uniform(2)
        if random == 0 {
            imageView.image = UIImage(named: "head")
        }else{
            imageView.image = UIImage(named: "tail")
        }
    }
    
    func animate(){
        imageView.isHidden = false
        self.imageView.fadeIn(completion: {
        (finished: Bool) -> Void in
        self.imageView.fadeOut()
        })
    }
    
}
extension UIView {
    func fadeIn(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: completion)
    }

    func fadeOut(duration: TimeInterval = 1.0, delay: TimeInterval = 1.5, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 0.0
        }, completion: completion)
    }
}


