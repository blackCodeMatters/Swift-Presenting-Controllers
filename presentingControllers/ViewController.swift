//
//  ViewController.swift
//  presentingControllers
//
//  Created by Dustin on 8/28/19.
//  Copyright © 2019 Dustin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
 
    @IBAction func presentActivityViewController(_ sender: Any) {
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func presentAlertViewController(_ sender: Any) {
        let controller = UIAlertController()
        
        controller.title = "This is a Title"
        controller.message = "this is a message"
        
        let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: { action in
            self.dismiss(animated: true, completion: nil)
        })
        
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func presentImagePickerController(_ sender: Any) {
        let nextController = UIImagePickerController()
        self.present(nextController, animated: true, completion: nil)
    }
    
    
    
}

