
import UIKit

class EndViewController: UIViewController {
    
    @IBOutlet var EndLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    @IBAction func PreviousButton(_ sender: Any) {
        
        performSegue(withIdentifier: SegueManager.SecondView, sender: sender)
    }
}
