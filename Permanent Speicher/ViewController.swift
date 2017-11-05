

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBAction func speichernPressed(_ sender: Any) {
        // 1. um data zu schreiben
        UserDefaults.standard.set(textFieldOutlet.text, forKey: "number")
    }
    
    @IBOutlet weak var memoryOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 2. um data abzulesen
        let numberObject = UserDefaults.standard.object(forKey: "number")
        // 3. Datatype ändern  :  von Object zu String
        if let number = numberObject as? String {
            memoryOutlet.text = number
        } else {
            memoryOutlet.text = ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

