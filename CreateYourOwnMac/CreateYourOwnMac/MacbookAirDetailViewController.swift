//
//  MacbookAirDetailViewController.swift
//  CreateYourOwnMac
//
//  Created by Furkan Hanci on 11/9/20.
//

import UIKit

class MacbookAirDetailViewController: UIViewController {

    @IBOutlet weak var macbookAirImage: UIImageView!
    @IBOutlet weak var ssdTextField: UITextField!
    @IBOutlet weak var ramTextField: UITextField!
    @IBOutlet weak var processorTextField: UITextField!
    @IBOutlet weak var shareButton: UIButton!
    
    let ssd = ["128" , "256" , "512" , "1TB" , "2TB" , "4TB" , "8TB" , "16TB" , "32TB" , "64TB" , "128TB" , "256TB" , "512TB" ]
    let ram = ["8" , "16" , "32" , "64" , "128" , "256" , "512" , "1TB" , "2TB" , "4TB" , "8TB" , "16TB" , "32TB" , "64TB" , "128TB" , "256TB" , "512TB"]
    let processor = ["i5" , "i7" , "i9" , "APPLE M1"]
    
    let ssdpicker = UIPickerView()
    let ramPicker = UIPickerView()
    let processPicker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        ssdTextField.placeholder = "Select your MacbookAir's ssd"
        ramTextField.placeholder = "Select your MacbookAir's ram"
        processorTextField.placeholder = "Select your MacbookAir's processor"
        ssdTextField.backgroundColor = UIColor.yellow
        ramTextField.backgroundColor = UIColor.yellow
        processorTextField.backgroundColor = UIColor.yellow
      //  ssdTextField.attributedPlaceholder = NSAttributedString(string:"Enter Title", attributes: [NSForegroundColorAttributeName: yellowColor])
        ssdTextField.textAlignment = .center
        ramTextField.textAlignment = .center
        processorTextField.textAlignment = .center
        ssdpicker.tag = 1
        ramPicker.tag = 2
        processPicker.tag = 3
        ssdpicker.dataSource = self
        ssdpicker.delegate = self
        ramPicker.dataSource = self
        ramPicker.delegate = self
        processPicker.dataSource = self
        processPicker.delegate = self
        
        ssdTextField.inputView = ssdpicker
        ramTextField.inputView = ramPicker
        processorTextField.inputView = processPicker
     
    }
    

    @IBAction func shareTapped(_ sender: UIButton) {
        let activityVC = UIActivityViewController(activityItems: [ self.macbookAirImage.image ,self.ssdTextField.text , self.ramTextField.text , self.processorTextField.text], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
    }
    

}


extension MacbookAirDetailViewController : UIPickerViewDelegate , UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch pickerView.tag {
        case 1:
            return ssd.count
        case 2:
            return ram.count
        case 3:
            return processor.count
        default:
            return 1
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch pickerView.tag {
        case 1:
            return ssd[row]
        case 2:
            return ram[row]
        case 3:
            return processor[row]
        default:
            return "Data not found"
        }
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch pickerView.tag {
        case 1:
            return ssdTextField.text = ssd[row]
            ssdTextField.resignFirstResponder()
            //createToolbar()
          //  self.view.endEditing(false)
        case 2:
            return ramTextField.text = ram[row]
            //createToolbar()
        ssdTextField.resignFirstResponder()
        //    self.view.endEditing(false)
        case 3:
            return processorTextField.text = processor[row]
            //createToolbar()
            ssdTextField.resignFirstResponder()
          //  self.view.endEditing(false)
        default:
            return
        }
 
 
        
     
        
        
    }
   
}
