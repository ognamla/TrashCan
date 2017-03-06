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
        //        let height: CGFloat = 30 //whatever height you want
        //        let bounds = self.navigationController!.navigationBar.bounds
        //        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height - height)
        
        //textField return
        textField.delegate = self
        
        if textField.text == nil {
            textLabel.text = "還剩下96個字"
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var saveButton: UIButton!
    @IBAction func saveButton(_ sender: Any) {
        //animate alpha
        saveButton.alpha = 0.5
        UIView.animate(withDuration: 1, animations: {
            self.saveButton.alpha = 1
        })
        
        let rect = CGRect(x: 0, y: 0, width: imageView.frame.width, height: imageView.frame.height)
        
        UIGraphicsBeginImageContextWithOptions(rect.size, true, 0)
        //view.drawHierarchy(in: rect, afterScreenUpdates: false)
        
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let imageOfView = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        // Save it to the camera roll
        UIImageWriteToSavedPhotosAlbum(imageOfView!, nil, nil, nil)
        
    }
    
    @IBOutlet var shareButton: UIButton!
    @IBAction func shareButtom(_ sender: Any) {
        //animate alpha
        shareButton.alpha = 0.5
        UIView.animate(withDuration: 0.5, animations: {
            self.shareButton.alpha = 1
        })
        
        
        
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
    
    @IBOutlet var l11: UILabel! ; @IBOutlet var l12: UILabel! ; @IBOutlet var l13: UILabel! ; @IBOutlet var l14: UILabel! ; @IBOutlet var l15: UILabel! ; @IBOutlet var l16: UILabel! ; @IBOutlet var l17: UILabel! ; @IBOutlet var l18: UILabel!
    @IBOutlet var l21: UILabel! ; @IBOutlet var l22: UILabel! ; @IBOutlet var l23: UILabel! ; @IBOutlet var l24: UILabel! ; @IBOutlet var l25: UILabel! ; @IBOutlet var l26: UILabel! ; @IBOutlet var l27: UILabel! ; @IBOutlet var l28: UILabel!
    @IBOutlet var l31: UILabel! ; @IBOutlet var l32: UILabel! ; @IBOutlet var l33: UILabel! ; @IBOutlet var l34: UILabel! ; @IBOutlet var l35: UILabel! ; @IBOutlet var l36: UILabel! ; @IBOutlet var l37: UILabel! ; @IBOutlet var l38: UILabel!
    @IBOutlet var l41: UILabel! ; @IBOutlet var l42: UILabel! ; @IBOutlet var l43: UILabel! ; @IBOutlet var l44: UILabel! ; @IBOutlet var l45: UILabel! ; @IBOutlet var l46: UILabel! ; @IBOutlet var l47: UILabel! ; @IBOutlet var l48: UILabel!
    @IBOutlet var l51: UILabel! ; @IBOutlet var l52: UILabel! ; @IBOutlet var l53: UILabel! ; @IBOutlet var l54: UILabel! ; @IBOutlet var l55: UILabel! ; @IBOutlet var l56: UILabel! ; @IBOutlet var l57: UILabel! ; @IBOutlet var l58: UILabel!
    @IBOutlet var l61: UILabel! ; @IBOutlet var l62: UILabel! ; @IBOutlet var l63: UILabel! ; @IBOutlet var l64: UILabel! ; @IBOutlet var l65: UILabel! ; @IBOutlet var l66: UILabel! ; @IBOutlet var l67: UILabel! ; @IBOutlet var l68: UILabel!
    @IBOutlet var l71: UILabel! ; @IBOutlet var l72: UILabel! ; @IBOutlet var l73: UILabel! ; @IBOutlet var l74: UILabel! ; @IBOutlet var l75: UILabel! ; @IBOutlet var l76: UILabel! ; @IBOutlet var l77: UILabel! ; @IBOutlet var l78: UILabel!
    @IBOutlet var l81: UILabel! ; @IBOutlet var l82: UILabel! ; @IBOutlet var l83: UILabel! ; @IBOutlet var l84: UILabel! ; @IBOutlet var l85: UILabel! ; @IBOutlet var l86: UILabel! ; @IBOutlet var l87: UILabel! ; @IBOutlet var l88: UILabel!
    @IBOutlet var l91: UILabel! ; @IBOutlet var l92: UILabel! ; @IBOutlet var l93: UILabel! ; @IBOutlet var l94: UILabel! ; @IBOutlet var l95: UILabel! ; @IBOutlet var l96: UILabel! ; @IBOutlet var l97: UILabel! ; @IBOutlet var l98: UILabel!
    @IBOutlet var la1: UILabel! ; @IBOutlet var la2: UILabel! ; @IBOutlet var la3: UILabel! ; @IBOutlet var la4: UILabel! ; @IBOutlet var la5: UILabel! ; @IBOutlet var la6: UILabel! ; @IBOutlet var la7: UILabel! ; @IBOutlet var la8: UILabel!
    @IBOutlet var lb1: UILabel! ; @IBOutlet var lb2: UILabel! ; @IBOutlet var lb3: UILabel! ; @IBOutlet var lb4: UILabel! ; @IBOutlet var lb5: UILabel! ; @IBOutlet var lb6: UILabel! ; @IBOutlet var lb7: UILabel! ; @IBOutlet var lb8: UILabel!
    @IBOutlet var lc1: UILabel! ; @IBOutlet var lc2: UILabel! ; @IBOutlet var lc3: UILabel! ; @IBOutlet var lc4: UILabel! ; @IBOutlet var lc5: UILabel! ; @IBOutlet var lc6: UILabel! ; @IBOutlet var lc7: UILabel! ; @IBOutlet var lc8: UILabel!
    
    
    @IBAction func textField(_ sender: Any) {
        textField.resignFirstResponder()
        upDateButton()
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        moveTextField(textField: textField, moveDistance: -40, up: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        moveTextField(textField: textField, moveDistance: -40, up: false)
        self.navigationController?.isNavigationBarHidden = false
        
    }
    func moveTextField(textField: UITextField , moveDistance: Int, up: Bool) {
        let moveDeulation = 0.3
        let movement:CGFloat = CGFloat(up ? moveDistance : -moveDistance)
        
        UIView.beginAnimations("animateTextField", context: nil )
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(moveDeulation)
        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
        UIView.commitAnimations()
        
    }
    func upDateButton() {
        
        if textField.text != nil {
            
            textLabel.text = "還剩下\(96 - (textField.text?.characters.count)!)個字"
            
            let textArray:Array<String.CharacterView._Element> = Array(repeating: " ", count: 100)
            print(textArray)
            let textFieldArray:Array = Array(textField.text!.characters)
            print(textFieldArray)
            let combinedArray = textFieldArray + textArray
            print(combinedArray)
            
            let textNumber: Int = (textField.text?.characters.count)!
            switch textNumber {
            case 1...2:
                l64.text = "\(combinedArray[0])" ;
                l65.text = "\(combinedArray[1])" ;
            case 1...4:
                l63.text = "\(combinedArray[0])" ;
                l64.text = "\(combinedArray[1])" ;
                l65.text = "\(combinedArray[2])" ;
                l66.text = "\(combinedArray[3])" ;
            case 1...6:
                l62.text = "\(combinedArray[0])" ;
                l63.text = "\(combinedArray[1])" ;
                l64.text = "\(combinedArray[2])" ;
                l65.text = "\(combinedArray[3])" ;
                l66.text = "\(combinedArray[4])" ;
                l67.text = "\(combinedArray[5])" ;
            case 1...8:
                l61.text = "\(combinedArray[0])" ;
                l62.text = "\(combinedArray[1])" ;
                l63.text = "\(combinedArray[2])" ;
                l64.text = "\(combinedArray[3])" ;
                l65.text = "\(combinedArray[4])" ;
                l66.text = "\(combinedArray[5])" ;
                l67.text = "\(combinedArray[6])" ;
                l68.text = "\(combinedArray[7])" ;
            case 1...16 :
                l61.text = "\(combinedArray[0])" ;
                l62.text = "\(combinedArray[1])" ;
                l63.text = "\(combinedArray[2])" ;
                l64.text = "\(combinedArray[3])" ;
                l65.text = "\(combinedArray[4])" ;
                l66.text = "\(combinedArray[5])" ;
                l67.text = "\(combinedArray[6])" ;
                l68.text = "\(combinedArray[7])" ;
                
                l71.text = "\(combinedArray[8])" ;
                l72.text = "\(combinedArray[9])" ;
                l73.text = "\(combinedArray[10])" ;
                l74.text = "\(combinedArray[11])" ;
                l75.text = "\(combinedArray[12])" ;
                l76.text = "\(combinedArray[13])" ;
                l77.text = "\(combinedArray[14])" ;
                l78.text = "\(combinedArray[15])" ;
            case 1...32 :
                l51.text = "\(combinedArray[0])" ;
                l52.text = "\(combinedArray[1])" ;
                l53.text = "\(combinedArray[2])" ;
                l54.text = "\(combinedArray[3])" ;
                l55.text = "\(combinedArray[4])" ;
                l56.text = "\(combinedArray[5])" ;
                l57.text = "\(combinedArray[6])" ;
                l58.text = "\(combinedArray[7])" ;
                
                l61.text = "\(combinedArray[8])" ;
                l62.text = "\(combinedArray[9])" ;
                l63.text = "\(combinedArray[10])" ;
                l64.text = "\(combinedArray[11])" ;
                l65.text = "\(combinedArray[12])" ;
                l66.text = "\(combinedArray[13])" ;
                l67.text = "\(combinedArray[14])" ;
                l68.text = "\(combinedArray[15])" ;
                
                l71.text = "\(combinedArray[16])" ;
                l72.text = "\(combinedArray[17])" ;
                l73.text = "\(combinedArray[18])" ;
                l74.text = "\(combinedArray[19])" ;
                l75.text = "\(combinedArray[20])" ;
                l76.text = "\(combinedArray[21])" ;
                l77.text = "\(combinedArray[22])" ;
                l78.text = "\(combinedArray[23])" ;
                
                l81.text = "\(combinedArray[24])" ;
                l82.text = "\(combinedArray[25])" ;
                l83.text = "\(combinedArray[26])" ;
                l84.text = "\(combinedArray[27])" ;
                l85.text = "\(combinedArray[28])" ;
                l86.text = "\(combinedArray[29])" ;
                l87.text = "\(combinedArray[30])" ;
                l88.text = "\(combinedArray[31])" ;
            case 1...48 :
                l41.text = "\(combinedArray[0])" ;
                l42.text = "\(combinedArray[1])" ;
                l43.text = "\(combinedArray[2])" ;
                l44.text = "\(combinedArray[3])" ;
                l45.text = "\(combinedArray[4])" ;
                l46.text = "\(combinedArray[5])" ;
                l47.text = "\(combinedArray[6])" ;
                l48.text = "\(combinedArray[7])" ;
                
                l51.text = "\(combinedArray[8])" ;
                l52.text = "\(combinedArray[9])" ;
                l53.text = "\(combinedArray[10])" ;
                l54.text = "\(combinedArray[11])" ;
                l55.text = "\(combinedArray[12])" ;
                l56.text = "\(combinedArray[13])" ;
                l57.text = "\(combinedArray[14])" ;
                l58.text = "\(combinedArray[15])" ;
                
                l61.text = "\(combinedArray[16])" ;
                l62.text = "\(combinedArray[17])" ;
                l63.text = "\(combinedArray[18])" ;
                l64.text = "\(combinedArray[19])" ;
                l65.text = "\(combinedArray[20])" ;
                l66.text = "\(combinedArray[21])" ;
                l67.text = "\(combinedArray[22])" ;
                l68.text = "\(combinedArray[23])" ;
                
                l71.text = "\(combinedArray[24])" ;
                l72.text = "\(combinedArray[25])" ;
                l73.text = "\(combinedArray[26])" ;
                l74.text = "\(combinedArray[27])" ;
                l75.text = "\(combinedArray[28])" ;
                l76.text = "\(combinedArray[29])" ;
                l77.text = "\(combinedArray[30])" ;
                l78.text = "\(combinedArray[31])" ;
                
                l81.text = "\(combinedArray[32])" ;
                l82.text = "\(combinedArray[33])" ;
                l83.text = "\(combinedArray[34])" ;
                l84.text = "\(combinedArray[35])" ;
                l85.text = "\(combinedArray[36])" ;
                l86.text = "\(combinedArray[37])" ;
                l87.text = "\(combinedArray[38])" ;
                l88.text = "\(combinedArray[39])" ;
                
                l91.text = "\(combinedArray[40])" ;
                l92.text = "\(combinedArray[41])" ;
                l93.text = "\(combinedArray[42])" ;
                l94.text = "\(combinedArray[43])" ;
                l95.text = "\(combinedArray[44])" ;
                l96.text = "\(combinedArray[45])" ;
                l97.text = "\(combinedArray[46])" ;
                l98.text = "\(combinedArray[47])" ;
            case 1...64:
                l31.text = "\(combinedArray[0])" ;
                l32.text = "\(combinedArray[1])" ;
                l33.text = "\(combinedArray[2])" ;
                l34.text = "\(combinedArray[3])" ;
                l35.text = "\(combinedArray[4])" ;
                l36.text = "\(combinedArray[5])" ;
                l37.text = "\(combinedArray[6])" ;
                l38.text = "\(combinedArray[7])" ;
                
                l41.text = "\(combinedArray[8])" ;
                l42.text = "\(combinedArray[9])" ;
                l43.text = "\(combinedArray[10])" ;
                l44.text = "\(combinedArray[11])" ;
                l45.text = "\(combinedArray[12])" ;
                l46.text = "\(combinedArray[13])" ;
                l47.text = "\(combinedArray[14])" ;
                l48.text = "\(combinedArray[15])" ;
                
                l51.text = "\(combinedArray[16])" ;
                l52.text = "\(combinedArray[17])" ;
                l53.text = "\(combinedArray[18])" ;
                l54.text = "\(combinedArray[19])" ;
                l55.text = "\(combinedArray[20])" ;
                l56.text = "\(combinedArray[21])" ;
                l57.text = "\(combinedArray[22])" ;
                l58.text = "\(combinedArray[23])" ;
                
                l61.text = "\(combinedArray[24])" ;
                l62.text = "\(combinedArray[25])" ;
                l63.text = "\(combinedArray[26])" ;
                l64.text = "\(combinedArray[27])" ;
                l65.text = "\(combinedArray[28])" ;
                l66.text = "\(combinedArray[29])" ;
                l67.text = "\(combinedArray[30])" ;
                l68.text = "\(combinedArray[31])" ;
                
                l71.text = "\(combinedArray[32])" ;
                l72.text = "\(combinedArray[33])" ;
                l73.text = "\(combinedArray[34])" ;
                l74.text = "\(combinedArray[35])" ;
                l75.text = "\(combinedArray[36])" ;
                l76.text = "\(combinedArray[37])" ;
                l77.text = "\(combinedArray[38])" ;
                l78.text = "\(combinedArray[39])" ;
                
                l81.text = "\(combinedArray[40])" ;
                l82.text = "\(combinedArray[41])" ;
                l83.text = "\(combinedArray[42])" ;
                l84.text = "\(combinedArray[43])" ;
                l85.text = "\(combinedArray[44])" ;
                l86.text = "\(combinedArray[45])" ;
                l87.text = "\(combinedArray[46])" ;
                l88.text = "\(combinedArray[47])" ;
                
                l91.text = "\(combinedArray[48])" ;
                l92.text = "\(combinedArray[49])" ;
                l93.text = "\(combinedArray[50])" ;
                l94.text = "\(combinedArray[51])" ;
                l95.text = "\(combinedArray[52])" ;
                l96.text = "\(combinedArray[53])" ;
                l97.text = "\(combinedArray[54])" ;
                l98.text = "\(combinedArray[55])" ;
                
                la1.text = "\(combinedArray[56])" ;
                la2.text = "\(combinedArray[57])" ;
                la3.text = "\(combinedArray[58])" ;
                la4.text = "\(combinedArray[59])" ;
                la5.text = "\(combinedArray[60])" ;
                la6.text = "\(combinedArray[61])" ;
                la7.text = "\(combinedArray[62])" ;
                la8.text = "\(combinedArray[63])" ;
            case 1...80:
                l21.text = "\(combinedArray[0])" ;
                l22.text = "\(combinedArray[1])" ;
                l23.text = "\(combinedArray[2])" ;
                l24.text = "\(combinedArray[3])" ;
                l25.text = "\(combinedArray[4])" ;
                l26.text = "\(combinedArray[5])" ;
                l27.text = "\(combinedArray[6])" ;
                l28.text = "\(combinedArray[7])" ;
                
                l31.text = "\(combinedArray[8])" ;
                l32.text = "\(combinedArray[9])" ;
                l33.text = "\(combinedArray[10])" ;
                l34.text = "\(combinedArray[11])" ;
                l35.text = "\(combinedArray[12])" ;
                l36.text = "\(combinedArray[13])" ;
                l37.text = "\(combinedArray[14])" ;
                l38.text = "\(combinedArray[15])" ;
                
                l41.text = "\(combinedArray[16])" ;
                l42.text = "\(combinedArray[17])" ;
                l43.text = "\(combinedArray[18])" ;
                l44.text = "\(combinedArray[19])" ;
                l45.text = "\(combinedArray[20])" ;
                l46.text = "\(combinedArray[21])" ;
                l47.text = "\(combinedArray[22])" ;
                l48.text = "\(combinedArray[23])" ;
                
                l51.text = "\(combinedArray[24])" ;
                l52.text = "\(combinedArray[25])" ;
                l53.text = "\(combinedArray[26])" ;
                l54.text = "\(combinedArray[27])" ;
                l55.text = "\(combinedArray[28])" ;
                l56.text = "\(combinedArray[29])" ;
                l57.text = "\(combinedArray[30])" ;
                l58.text = "\(combinedArray[31])" ;
                
                l61.text = "\(combinedArray[32])" ;
                l62.text = "\(combinedArray[33])" ;
                l63.text = "\(combinedArray[34])" ;
                l64.text = "\(combinedArray[35])" ;
                l65.text = "\(combinedArray[36])" ;
                l66.text = "\(combinedArray[37])" ;
                l67.text = "\(combinedArray[38])" ;
                l68.text = "\(combinedArray[39])" ;
                
                l71.text = "\(combinedArray[40])" ;
                l72.text = "\(combinedArray[41])" ;
                l73.text = "\(combinedArray[42])" ;
                l74.text = "\(combinedArray[43])" ;
                l75.text = "\(combinedArray[44])" ;
                l76.text = "\(combinedArray[45])" ;
                l77.text = "\(combinedArray[46])" ;
                l78.text = "\(combinedArray[47])" ;
                
                l81.text = "\(combinedArray[48])" ;
                l82.text = "\(combinedArray[49])" ;
                l83.text = "\(combinedArray[50])" ;
                l84.text = "\(combinedArray[51])" ;
                l85.text = "\(combinedArray[52])" ;
                l86.text = "\(combinedArray[53])" ;
                l87.text = "\(combinedArray[54])" ;
                l88.text = "\(combinedArray[55])" ;
                
                l91.text = "\(combinedArray[56])" ;
                l92.text = "\(combinedArray[57])" ;
                l93.text = "\(combinedArray[58])" ;
                l94.text = "\(combinedArray[59])" ;
                l95.text = "\(combinedArray[60])" ;
                l96.text = "\(combinedArray[61])" ;
                l97.text = "\(combinedArray[62])" ;
                l98.text = "\(combinedArray[63])" ;
                
                la1.text = "\(combinedArray[64])" ;
                la2.text = "\(combinedArray[65])" ;
                la3.text = "\(combinedArray[66])" ;
                la4.text = "\(combinedArray[67])" ;
                la5.text = "\(combinedArray[68])" ;
                la6.text = "\(combinedArray[69])" ;
                la7.text = "\(combinedArray[70])" ;
                la8.text = "\(combinedArray[71])" ;
                
                lb1.text = "\(combinedArray[72])" ;
                lb2.text = "\(combinedArray[73])" ;
                lb3.text = "\(combinedArray[74])" ;
                lb4.text = "\(combinedArray[75])" ;
                lb5.text = "\(combinedArray[76])" ;
                lb6.text = "\(combinedArray[77])" ;
                lb7.text = "\(combinedArray[78])" ;
                lb8.text = "\(combinedArray[79])" ;
                
            default:
                l11.text = "\(combinedArray[0])" ;
                l12.text = "\(combinedArray[1])" ;
                l13.text = "\(combinedArray[2])" ;
                l14.text = "\(combinedArray[3])" ;
                l15.text = "\(combinedArray[4])" ;
                l16.text = "\(combinedArray[5])" ;
                l17.text = "\(combinedArray[6])" ;
                l18.text = "\(combinedArray[7])" ;
                
                l21.text = "\(combinedArray[8])" ;
                l22.text = "\(combinedArray[9])" ;
                l23.text = "\(combinedArray[10])" ;
                l24.text = "\(combinedArray[11])" ;
                l25.text = "\(combinedArray[12])" ;
                l26.text = "\(combinedArray[13])" ;
                l27.text = "\(combinedArray[14])" ;
                l28.text = "\(combinedArray[15])" ;
                
                l31.text = "\(combinedArray[16])" ;
                l32.text = "\(combinedArray[17])" ;
                l33.text = "\(combinedArray[18])" ;
                l34.text = "\(combinedArray[19])" ;
                l35.text = "\(combinedArray[20])" ;
                l36.text = "\(combinedArray[21])" ;
                l37.text = "\(combinedArray[22])" ;
                l38.text = "\(combinedArray[23])" ;
                
                l41.text = "\(combinedArray[24])" ;
                l42.text = "\(combinedArray[25])" ;
                l43.text = "\(combinedArray[26])" ;
                l44.text = "\(combinedArray[27])" ;
                l45.text = "\(combinedArray[28])" ;
                l46.text = "\(combinedArray[29])" ;
                l47.text = "\(combinedArray[30])" ;
                l48.text = "\(combinedArray[31])" ;
                
                l51.text = "\(combinedArray[32])" ;
                l52.text = "\(combinedArray[33])" ;
                l53.text = "\(combinedArray[34])" ;
                l54.text = "\(combinedArray[35])" ;
                l55.text = "\(combinedArray[36])" ;
                l56.text = "\(combinedArray[37])" ;
                l57.text = "\(combinedArray[38])" ;
                l58.text = "\(combinedArray[39])" ;
                
                l61.text = "\(combinedArray[40])" ;
                l62.text = "\(combinedArray[41])" ;
                l63.text = "\(combinedArray[42])" ;
                l64.text = "\(combinedArray[43])" ;
                l65.text = "\(combinedArray[44])" ;
                l66.text = "\(combinedArray[45])" ;
                l67.text = "\(combinedArray[46])" ;
                l68.text = "\(combinedArray[47])" ;
                
                l71.text = "\(combinedArray[48])" ;
                l72.text = "\(combinedArray[49])" ;
                l73.text = "\(combinedArray[50])" ;
                l74.text = "\(combinedArray[51])" ;
                l75.text = "\(combinedArray[52])" ;
                l76.text = "\(combinedArray[53])" ;
                l77.text = "\(combinedArray[54])" ;
                l78.text = "\(combinedArray[55])" ;
                
                l81.text = "\(combinedArray[56])" ;
                l82.text = "\(combinedArray[57])" ;
                l83.text = "\(combinedArray[58])" ;
                l84.text = "\(combinedArray[59])" ;
                l85.text = "\(combinedArray[60])" ;
                l86.text = "\(combinedArray[61])" ;
                l87.text = "\(combinedArray[62])" ;
                l88.text = "\(combinedArray[63])" ;
                
                l91.text = "\(combinedArray[64])" ;
                l92.text = "\(combinedArray[65])" ;
                l93.text = "\(combinedArray[66])" ;
                l94.text = "\(combinedArray[67])" ;
                l95.text = "\(combinedArray[68])" ;
                l96.text = "\(combinedArray[69])" ;
                l97.text = "\(combinedArray[70])" ;
                l98.text = "\(combinedArray[71])" ;
                
                la1.text = "\(combinedArray[72])" ;
                la2.text = "\(combinedArray[73])" ;
                la3.text = "\(combinedArray[74])" ;
                la4.text = "\(combinedArray[75])" ;
                la5.text = "\(combinedArray[76])" ;
                la6.text = "\(combinedArray[77])" ;
                la7.text = "\(combinedArray[78])" ;
                la8.text = "\(combinedArray[79])" ;
                
                lb1.text = "\(combinedArray[80])" ;
                lb2.text = "\(combinedArray[81])" ;
                lb3.text = "\(combinedArray[82])" ;
                lb4.text = "\(combinedArray[83])" ;
                lb5.text = "\(combinedArray[84])" ;
                lb6.text = "\(combinedArray[85])" ;
                lb7.text = "\(combinedArray[86])" ;
                lb8.text = "\(combinedArray[87])" ;
                
                lc1.text = "\(combinedArray[88])" ;
                lc2.text = "\(combinedArray[89])" ;
                lc3.text = "\(combinedArray[90])" ;
                lc4.text = "\(combinedArray[91])" ;
                lc5.text = "\(combinedArray[92])" ;
                lc6.text = "\(combinedArray[93])" ;
                lc7.text = "\(combinedArray[94])" ;
                lc8.text = "\(combinedArray[95])" ;
            }
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
