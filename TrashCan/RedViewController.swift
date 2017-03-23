//
//  TrashCanViewController.swift
//  TrashCan
//
//  Created by Ognam.Chen on 2017/2/28.
//  Copyright © 2017年 SwiftCourse. All rights reserved.
//

import UIKit


class RedViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        textField.clearButtonMode = UITextFieldViewMode.whileEditing
        if textField.text == nil {
            textLabel.text = "還剩下72個字"
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
    //save image
    @IBAction func saveButton(_ sender: Any) {
        //animate alpha
        saveButton.alpha = 0.5
        fakeNavigation.center.y = 0
        clearButton.center.y = 0
        UIView.animate(withDuration: 1, animations: {
            self.saveButton.alpha = 1
            self.fakeNavigation.center.y = -40
            self.clearButton.center.y = -40
        })
        
        let rect = CGRect(x: 0, y: 0, width: imageView.frame.width, height: imageView.frame.height)
        
        UIGraphicsBeginImageContextWithOptions(rect.size, true, 0)
        //view.drawHierarchy(in: rect, afterScreenUpdates: false)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        //self.view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
        
        let imageOfView = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        // Save it to the camera roll
        UIImageWriteToSavedPhotosAlbum(imageOfView!, nil, nil, nil)
        
    }
    
    @IBOutlet var shareButton: UIButton!
    @IBAction func shareButtom(_ sender: Any) {
        //animate alpha
        shareButton.alpha = 0.5
        fakeNavigation.center.y = 0
        clearButton.center.y = 0
        UIView.animate(withDuration: 0.5, animations: {
            self.shareButton.alpha = 1
            self.fakeNavigation.center.y = -40
            self.clearButton.center.y = -40
            
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
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let selectImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.image = selectImage
            imageView.contentMode = .scaleAspectFill
            
            
        }
        dismiss(animated: true, completion: nil)
    }
    @IBAction func upDatePhoto(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = false
            imagePicker.sourceType = .photoLibrary
            imagePicker.delegate = self
            
            present(imagePicker, animated: true, completion: nil)
        }
        
    }
    @IBOutlet var clearButton: UIButton!
    @IBAction func clearButton(_ sender: Any) {
        imageView.image = nil
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
    
    @IBOutlet var fakeNavigation: UILabel!
    
    @IBAction func textField(_ sender: Any) {
        fakeNavigation.center = CGPoint(x: 0, y: 0)
        clearButton.center.y = 0
        
        textField.resignFirstResponder()
        upDateButton()
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        moveTextField(textField: textField, moveDistance: -40, up: true)
        self.navigationController?.isNavigationBarHidden = true
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        moveTextField(textField: textField, moveDistance: -40, up: false)
        //self.navigationController?.isNavigationBarHidden = false
        
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
            
            textLabel.text = "還剩下\(72 - (textField.text?.characters.count)!)個字"
            
            let textArray:Array<String.CharacterView._Element> = Array(repeating: " ", count: 100)
            print(textArray)
            let textFieldArray:Array = Array(textField.text!.characters)
            print(textFieldArray)
            let combinedArray = textFieldArray + textArray
            print(combinedArray)
            
            let textNumber: Int = (textField.text?.characters.count)!
            l11.text = nil; l12.text = nil; l13.text = nil; l14.text = nil
            l15.text = nil; l16.text = nil; l17.text = nil; l18.text = nil
            l21.text = nil; l22.text = nil; l23.text = nil; l24.text = nil
            l25.text = nil; l26.text = nil; l27.text = nil; l28.text = nil
            l31.text = nil; l32.text = nil; l33.text = nil; l34.text = nil
            l35.text = nil; l36.text = nil; l37.text = nil; l38.text = nil
            l41.text = nil; l42.text = nil; l43.text = nil; l44.text = nil
            l45.text = nil; l46.text = nil; l47.text = nil; l48.text = nil
            l51.text = nil; l52.text = nil; l53.text = nil; l54.text = nil
            l55.text = nil; l56.text = nil; l57.text = nil; l58.text = nil
            l61.text = nil; l62.text = nil; l63.text = nil; l64.text = nil
            l65.text = nil; l66.text = nil; l67.text = nil; l68.text = nil
            l71.text = nil; l72.text = nil; l73.text = nil; l74.text = nil
            l75.text = nil; l76.text = nil; l77.text = nil; l78.text = nil
            l81.text = nil; l82.text = nil; l83.text = nil; l84.text = nil
            l85.text = nil; l86.text = nil; l87.text = nil; l88.text = nil
            l91.text = nil; l92.text = nil; l93.text = nil; l94.text = nil
            l95.text = nil; l96.text = nil; l97.text = nil; l98.text = nil
            
            
            
            switch textNumber {
            case 1...2:
                l54.text = "\(combinedArray[0])" ;
                l55.text = "\(combinedArray[1])" ;
            case 1...4:
                l53.text = "\(combinedArray[0])" ;
                l54.text = "\(combinedArray[1])" ;
                l55.text = "\(combinedArray[2])" ;
                l56.text = "\(combinedArray[3])" ;
            case 1...6:
                l52.text = "\(combinedArray[0])" ;
                l53.text = "\(combinedArray[1])" ;
                l54.text = "\(combinedArray[2])" ;
                l55.text = "\(combinedArray[3])" ;
                l56.text = "\(combinedArray[4])" ;
                l57.text = "\(combinedArray[5])" ;
            case 1...8:
                l51.text = "\(combinedArray[0])" ;
                l52.text = "\(combinedArray[1])" ;
                l53.text = "\(combinedArray[2])" ;
                l54.text = "\(combinedArray[3])" ;
                l55.text = "\(combinedArray[4])" ;
                l56.text = "\(combinedArray[5])" ;
                l57.text = "\(combinedArray[6])" ;
                l58.text = "\(combinedArray[7])" ;
                
            case 1...16 :
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
            case 1...24 :
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
            case 1...32 :
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
            case 1...40 :
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
            case 1...48 :
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
            case 1...56 :
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
            case 1...72:
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
