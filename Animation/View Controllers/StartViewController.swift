
import UIKit

class StartViewController: UIViewController {

    @IBOutlet var NextButton: UIButton!
    @IBOutlet var StartLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }

    override func viewWillAppear(_ animated: Bool) {
        StartLabel.alpha = 0
        NextButton.isHidden = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
        AnimateLabel()
        AnimateButtonIn()
        MoveButtonOver()
       
    }
    
    @IBAction func NextButton(_ sender: Any) {
        
        performSegue(withIdentifier: SegueManager.SecondView, sender: sender)
    }
    
    func AnimateLabel() {
        UIView.animate(withDuration: 1, delay: 0.25, options: [.curveEaseInOut], animations: {
            self.StartLabel.alpha = 1
            self.StartLabel.center.y -= 50
        }, completion: nil)
    }
    
    func AnimateButtonIn() {
        UIView.transition(with: self.NextButton, duration: 2, options: [.transitionFlipFromBottom], animations: {
            self.NextButton.isHidden = false
        }, completion: nil)
    }
    
    func MoveButtonOver() {
        UIView.animate(withDuration: 2, delay: 0.25, options: [.curveEaseIn], animations: {
            self.NextButton.center.x += 100
        }, completion: nil)
    }
}
