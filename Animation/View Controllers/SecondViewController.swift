

//Project by:
//
//      Kshitij Suthar - 300971838
//      Yash Sompura - 300967186
//      Shivam Shah - 300877523
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var NextButton: UIButton!
    @IBOutlet var PreviousButton: UIButton!
    @IBOutlet var secondLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        secondLabel.alpha = 0
        NextButton.isHidden = true
        PreviousButton.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        AnimateLabel()
        AnimateNextButtonIn()
        AnimatePreviousButtonIn()
        MoveNextButtonOver()
        MovePreviousButtonOver()
        pulseLabel()
    }
    
    @IBAction func PreviousButton(_ sender: Any) {
        performSegue(withIdentifier: SegueManager.StartView, sender: sender)
    }
    
    @IBAction func NextButton(_ sender: Any) {
        performSegue(withIdentifier: SegueManager.EndView, sender: sender)
    }
    
    func AnimateLabel() {
        UIView.animate(withDuration: 1, delay: 0.25, options: [.curveEaseInOut], animations: {
            self.secondLabel.alpha = 1
            self.secondLabel.center.y -= 280

        }, completion: nil)
    }
    
    func pulseLabel() {
        UIView.animate(withDuration: 1, delay: 0.75, options: [.curveEaseInOut, .repeat, .autoreverse], animations: {
            self.secondLabel.alpha = 0
        }, completion: nil)
    }
    
    
    func AnimateNextButtonIn() {
        UIView.transition(with: self.NextButton, duration: 2, options: [.transitionFlipFromBottom], animations: {
            self.NextButton.isHidden = false
        }, completion: nil)
    }
    
    func AnimatePreviousButtonIn() {
        UIView.transition(with: self.PreviousButton, duration: 2, options: [.transitionFlipFromBottom], animations: {
            self.PreviousButton.isHidden = false
        }, completion: nil)
    }
    
    func MoveNextButtonOver() {
        UIView.animate(withDuration: 2, delay: 2, options: [.curveEaseIn], animations: {
            self.NextButton.center.x += 200
        }, completion: nil)
    }
    
    func MovePreviousButtonOver() {
        UIView.animate(withDuration: 2, delay: 2, options: [.curveEaseIn], animations: {
            self.PreviousButton.center.x -= 200
        }, completion: nil)
    }
}
