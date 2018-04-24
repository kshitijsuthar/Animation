
import UIKit

class EndViewController: UIViewController {
    
    @IBOutlet var PreviousButton: UIButton!
    @IBOutlet var EndLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        EndLabel.alpha = 0
        PreviousButton.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        AnimateLabel()
        AnimateButtonIn()
        MoveButtonOver()
    }
    
    @IBAction func PreviousButton(_ sender: Any) {
        
        performSegue(withIdentifier: SegueManager.SecondView, sender: sender)
    }
    
    func AnimateLabel() {
        UIView.animate(withDuration: 1, delay: 0.25, options: [.curveEaseInOut, .autoreverse, .repeat], animations: {
            self.EndLabel.alpha = 1
            self.EndLabel.center.y -= 300
        }, completion: nil)
    }
    
    func AnimateButtonIn() {
        UIView.transition(with: self.PreviousButton, duration: 2, options: [.transitionFlipFromBottom], animations: {
            self.PreviousButton.isHidden = false
        }, completion: nil)
    }
    
    func MoveButtonOver() {
        UIView.animate(withDuration: 2, delay: 0.25, options: [.curveEaseIn], animations: {
            self.PreviousButton.center.x -= 100
        }, completion: nil)
    }
}
