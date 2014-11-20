//
//  DetailViewController.swift
//  AutoLayout
//
//  Created by Bradley Johnson on 11/10/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstNameTextField: UITextField!
    var imagePickerController = UIImagePickerController()
    
    var selectedPerson : Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.firstNameTextField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.selectedPerson?.firstName = self.firstNameTextField.text
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func camerButtonPressed(sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {
            self.imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            
            self.imagePickerController.delegate = self
            
            self.imagePickerController.allowsEditing = true 
            self.presentViewController(self.imagePickerController, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        let image = info[UIImagePickerControllerEditedImage] as UIImage
        self.imageView.image = image
        
        imagePickerController.dismissViewControllerAnimated(true, completion: nil)
        //self.selectedPerson.image = image
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
