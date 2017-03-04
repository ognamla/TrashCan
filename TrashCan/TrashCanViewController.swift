//
//  TrashCanViewController.swift
//  TrashCan
//
//  Created by Ognam.Chen on 2017/2/28.
//  Copyright © 2017年 SwiftCourse. All rights reserved.
//

import UIKit


class TrashCanViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Navigation
        let height: CGFloat = 40 //whatever height you want
        let bounds = self.navigationController!.navigationBar.bounds
        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height + height)
        
        //textField return
        textField.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var imageView: UIImageView!
    @IBAction func saveButton(_ sender: Any) {
        
        let rect = CGRect(x: 0, y: 0, width: imageView.frame.width, height: imageView.frame.height)
        
        UIGraphicsBeginImageContextWithOptions(rect.size, true, 0)
        //view.drawHierarchy(in: rect, afterScreenUpdates: false)
        
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let imageOfView = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        // Save it to the camera roll
        UIImageWriteToSavedPhotosAlbum(imageOfView!, nil, nil, nil)
        
    }
    
    @IBAction func shareButtom(_ sender: Any) {
        
        let rect = CGRect(x: 0, y: 0, width: imageView.frame.width, height: imageView.frame.height)
        
        UIGraphicsBeginImageContextWithOptions(rect.size, true, 0.0)
        
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let imageOfView = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        // image to share
        // set up activity view controller
        let activityViewController = UIActivityViewController(activityItems: [imageOfView!], applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        // so that iPads won't crash
        
        // exclude some activity types from the list (optional)
        // present the view controller
        self.present(activityViewController, animated: true, completion: nil)
        
    }
    
    @IBOutlet var l11: UILabel! ; @IBOutlet var l12: UILabel! ; @IBOutlet var l13: UILabel! ; @IBOutlet var l14: UILabel! ; @IBOutlet var l15: UILabel! ; @IBOutlet var l16: UILabel! ; @IBOutlet var l17: UILabel!
    @IBOutlet var l21: UILabel! ; @IBOutlet var l22: UILabel! ; @IBOutlet var l23: UILabel! ; @IBOutlet var l24: UILabel! ; @IBOutlet var l25: UILabel! ; @IBOutlet var l26: UILabel! ; @IBOutlet var l27: UILabel!
    @IBOutlet var l31: UILabel! ; @IBOutlet var l32: UILabel! ; @IBOutlet var l33: UILabel! ; @IBOutlet var l34: UILabel! ; @IBOutlet var l35: UILabel! ; @IBOutlet var l36: UILabel! ; @IBOutlet var l37: UILabel!
    @IBOutlet var l41: UILabel! ; @IBOutlet var l42: UILabel! ; @IBOutlet var l43: UILabel! ; @IBOutlet var l44: UILabel! ; @IBOutlet var l45: UILabel! ; @IBOutlet var l46: UILabel! ; @IBOutlet var l47: UILabel!
    @IBOutlet var l51: UILabel! ; @IBOutlet var l52: UILabel! ; @IBOutlet var l53: UILabel! ; @IBOutlet var l54: UILabel! ; @IBOutlet var l55: UILabel! ; @IBOutlet var l56: UILabel! ; @IBOutlet var l57: UILabel!
    @IBOutlet var l61: UILabel! ; @IBOutlet var l62: UILabel! ; @IBOutlet var l63: UILabel! ; @IBOutlet var l64: UILabel! ; @IBOutlet var l65: UILabel! ; @IBOutlet var l66: UILabel! ; @IBOutlet var l67: UILabel!
    @IBOutlet var l71: UILabel! ; @IBOutlet var l72: UILabel! ; @IBOutlet var l73: UILabel! ; @IBOutlet var l74: UILabel! ; @IBOutlet var l75: UILabel! ; @IBOutlet var l76: UILabel! ; @IBOutlet var l77: UILabel!
    @IBOutlet var l81: UILabel! ; @IBOutlet var l82: UILabel! ; @IBOutlet var l83: UILabel! ; @IBOutlet var l84: UILabel! ; @IBOutlet var l85: UILabel! ; @IBOutlet var l86: UILabel! ; @IBOutlet var l87: UILabel!
    @IBOutlet var l91: UILabel! ; @IBOutlet var l92: UILabel! ; @IBOutlet var l93: UILabel! ; @IBOutlet var l94: UILabel! ; @IBOutlet var l95: UILabel! ; @IBOutlet var l96: UILabel! ; @IBOutlet var l97: UILabel!
    
    

    @IBAction func textField(_ sender: Any) {
        textField.resignFirstResponder()
        upDateButton()
    }
    func upDateButton() {
        if textField.text != nil {
            let textArray:Array<String.CharacterView._Element> = Array(repeating: " ", count: 70)
            print(textArray)
            let textFieldArray:Array = Array(textField.text!.characters)
            print(textFieldArray)
            let combinedArray = textFieldArray + textArray
            print(combinedArray)
            l11.text = "\(combinedArray[0])" ;
            l12.text = "\(combinedArray[1])" ;
            l13.text = "\(combinedArray[2])" ;
            l14.text = "\(combinedArray[3])" ;
            l15.text = "\(combinedArray[4])" ;
            l16.text = "\(combinedArray[5])" ;
            l17.text = "\(combinedArray[6])" ;
            
            l21.text = "\(combinedArray[7])" ;
            l22.text = "\(combinedArray[8])" ;
            l23.text = "\(combinedArray[9])" ;
            l24.text = "\(combinedArray[10])" ;
            l25.text = "\(combinedArray[11])" ;
            l26.text = "\(combinedArray[12])" ;
            l27.text = "\(combinedArray[13])" ;
            
            l31.text = "\(combinedArray[14])" ;
            l32.text = "\(combinedArray[15])" ;
            l33.text = "\(combinedArray[16])" ;
            l34.text = "\(combinedArray[17])" ;
            l35.text = "\(combinedArray[18])" ;
            l36.text = "\(combinedArray[19])" ;
            l37.text = "\(combinedArray[20])" ;
            
            l41.text = "\(combinedArray[21])" ;
            l42.text = "\(combinedArray[22])" ;
            l43.text = "\(combinedArray[23])" ;
            l44.text = "\(combinedArray[24])" ;
            l45.text = "\(combinedArray[25])" ;
            l46.text = "\(combinedArray[26])" ;
            l47.text = "\(combinedArray[27])" ;
            
            l51.text = "\(combinedArray[28])" ;
            l52.text = "\(combinedArray[29])" ;
            l53.text = "\(combinedArray[30])" ;
            l54.text = "\(combinedArray[31])" ;
            l55.text = "\(combinedArray[32])" ;
            l56.text = "\(combinedArray[33])" ;
            l57.text = "\(combinedArray[34])" ;
            
            l61.text = "\(combinedArray[35])" ;
            l62.text = "\(combinedArray[36])" ;
            l63.text = "\(combinedArray[37])" ;
            l64.text = "\(combinedArray[38])" ;
            l65.text = "\(combinedArray[39])" ;
            l66.text = "\(combinedArray[40])" ;
            l67.text = "\(combinedArray[41])" ;
            
            l71.text = "\(combinedArray[42])" ;
            l72.text = "\(combinedArray[43])" ;
            l73.text = "\(combinedArray[44])" ;
            l74.text = "\(combinedArray[45])" ;
            l75.text = "\(combinedArray[46])" ;
            l76.text = "\(combinedArray[47])" ;
            l77.text = "\(combinedArray[48])" ;
            
            l81.text = "\(combinedArray[49])" ;
            l82.text = "\(combinedArray[50])" ;
            l83.text = "\(combinedArray[51])" ;
            l84.text = "\(combinedArray[52])" ;
            l85.text = "\(combinedArray[53])" ;
            l86.text = "\(combinedArray[54])" ;
            l87.text = "\(combinedArray[55])" ;
            
            l91.text = "\(combinedArray[56])" ;
            l92.text = "\(combinedArray[57])" ;
            l93.text = "\(combinedArray[58])" ;
            l94.text = "\(combinedArray[59])" ;
            l95.text = "\(combinedArray[60])" ;
            l96.text = "\(combinedArray[61])" ;
            l97.text = "\(combinedArray[62])" ;
            
        }
    }

    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    //        f11.addTarget(self, action: #selector(TrashCanViewController.textFieldChangeEdit), for: .editingChanged)
    //        f12.addTarget(self, action: #selector(TrashCanViewController.textFieldChangeEdit), for: .editingChanged)
    //        f13.addTarget(self, action: #selector(TrashCanViewController.textFieldChangeEdit), for: .editingChanged)
    //        f14.addTarget(self, action: #selector(TrashCanViewController.textFieldChangeEdit), for: .editingChanged)
    //        f15.addTarget(self, action: #selector(TrashCanViewController.textFieldChangeEdit), for: .editingChanged)
    //        f16.addTarget(self, action: #selector(TrashCanViewController.textFieldChangeEdit), for: .editingChanged)
    //        f17.addTarget(self, action: #selector(TrashCanViewController.textFieldChangeEdit), for: .editingChanged)
    //        f18.addTarget(self, action: #selector(TrashCanViewController.textFieldChangeEdit), for: .editingChanged)
    
    //    func textFieldChangeEdit() {
    //        if f11.text?.characters.count == 10 {
    //            f12.becomeFirstResponder()
    //        }
    //        if f12.text?.characters.count == 1 {
    //            f13.becomeFirstResponder()
    //        }
    //        if f13.text?.characters.count == 1 {
    //            f14.becomeFirstResponder()
    //        }
    //        if f14.text?.characters.count == 1 {
    //            f15.becomeFirstResponder()
    //        }
    //        if f15.text?.characters.count == 1 {
    //            f16.becomeFirstResponder()
    //        }
    //        if f16.text?.characters.count == 1 {
    //            f17.becomeFirstResponder()
    //        }
    //        if f17.text?.characters.count == 1 {
    //            f18.becomeFirstResponder()
    //        }
    //
    //    }
    
    
}
