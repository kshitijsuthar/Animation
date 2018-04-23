
import UIKit

class StartViewController: UIViewController {

    @IBOutlet var NextButton: UIButton!
    @IBOutlet var StartLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }

    override func viewWillAppear(_ animated: Bool) {
        StartLabel.alpha = 0
        //NextButton.isHidden = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1) {
            self.StartLabel.alpha = 1
        }
    }

    @IBAction func NextButton(_ sender: Any) {
        
        performSegue(withIdentifier: SegueManager.SecondView, sender: sender)
    }
}
