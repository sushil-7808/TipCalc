import UIKit

class TipCalculateVC: UIViewController {

    @IBOutlet weak var txtBill: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var txtSplitAmount: UITextField!
    @IBOutlet weak var txtTotal: UITextField!
    @IBOutlet weak var tipPercentage: UILabel!
    @IBOutlet weak var splitNum: UILabel!
    var percentage = 0
    var split = 0
    var splitAmount : Float = 0.0
    var total :Float = 0.0
    
    //this part is for value declaration and format
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtBill.becomeFirstResponder()
        
    }

    @IBAction func onChangeTipSlider(_ sender: Any) {
        
        percentage = Int(tipSlider.value)
        tipPercentage.text = "\(percentage)"
        calculate()
    }
    
    @IBAction func onChangeSplitSlider(_ sender: Any) {
        
        split = Int(splitSlider.value)
        splitNum.text = "\(split)"
        calculate()
    }
    
    func calculate(){
        
        splitAmount = Float(txtBill.text!)!*Float(tipPercentage.text!)!/100/Float(splitNum.text!)!
        total = Float((txtBill.text!))!/Float(splitNum.text!)! + splitAmount
        txtSplitAmount.text = "\(splitAmount)"
        txtTotal.text = "\(total)"
    }
    
    @IBAction func tapFunc(_ sender: Any) {
        view.endEditing(true)
    }
    
}

