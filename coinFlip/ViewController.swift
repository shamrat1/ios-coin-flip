//
//  ViewController.swift
//  coinFlip
//
//  Created by Leads Computer on 11/25/19.
//
// tuitorial link ->https://medium.com/@chantil/animate-serial-images-in-uiimageview-using-swift-39f249b25453
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    
    let img1 = UIImage(named: "1")!
    let img2 = UIImage(named: "2")!
    let img3 = UIImage(named: "3")!
    let img4 = UIImage(named: "4")!
    let img5 = UIImage(named: "5")!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isHidden = true
    }

    @IBAction func filpTheCoin(_ sender: UIButton) {
        
//        animate()
        imageView.isHidden = false
        
        
        // for 10 images
//        imageView.animationImages = [self.img1, self.img2 , self.img3, self.img4, self.img5, self.img1, self.img2 , self.img3, self.img4, self.img5]
//        imageView.animationDuration = 1
        
        // for 5 images
        imageView.animationImages = [self.img1, self.img2 , self.img3, self.img4, self.img5]
        imageView.animationDuration = 0.3
        imageView.animationRepeatCount = 2
        imageView.startAnimating()
        let random = arc4random_uniform(2)
        if random == 0 {
            imageView.image = UIImage(named: "head")
        }else{
            imageView.image = UIImage(named: "tail")
        }
    
//        UIView.transition(with: imageView, duration: 0.7, options: [.transitionFlipFromBottom], animations: nil, completion: nil)
        
    }
    
//    func animate(){
//        imageView.isHidden = false
//        self.imageView.fadeIn(completion: {
//        (finished: Bool) -> Void in
//        self.imageView.fadeOut()
//        })
//    }
    
}
//extension UIView {
//
//
//    func fadeIn(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
//        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
//            self.alpha = 1.0
//        }, completion: completion)
//    }
//
//    func fadeOut(duration: TimeInterval = 1.0, delay: TimeInterval = 1.5, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
//        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
//            self.alpha = 0.0
//        }, completion: completion)
//    }
//}


