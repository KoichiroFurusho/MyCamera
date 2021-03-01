//
//  ViewController.swift
//  MyCamera
//
//  Created by Kouichiro Furusho on 2021/03/01.
//

import UIKit

class ViewController: UIViewController , UINavigationControllerDelegate , UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var pictureImage: UIImageView!
 
    
    @IBAction func cameraButtonAction(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            print("カメラは利用できます。")
            let imagePickerCntroller = UIImagePickerController()
            
            imagePickerCntroller.sourceType = .camera
            
            imagePickerCntroller.delegate = self
            
            present(imagePickerCntroller, animated: true, completion: nil)
        } else {
            print("カメラは利用できません。")
        }
    }
    
    
    @IBAction func shareButtonAction(_ sender: Any) {
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
        pictureImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        
        dismiss(animated: true, completion: nil)
    }
    
    
}

