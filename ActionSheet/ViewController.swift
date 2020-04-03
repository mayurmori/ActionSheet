//
//  ViewController.swift
//  ActionSheet
//
//  Created by Mayur Mori on 10/09/19.
//  Copyright © 2019 Mayur Mori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB ACTIONS -
    @IBAction func btnOpenActionSheet_Tapped(_ sender: UIButton) {
        
        let alert = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
        
        let deleteAction = UIAlertAction(title: "Delete", style: .default, handler: { (UIAlertAction) in
            print("User Tapped Delete")
        })
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: { (UIAlertAction) in
            print("User Tapped Save")
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { (UIAlertAction) in
            print("User Tapped Cancel")
        })
        
        alert.addAction(deleteAction)
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
        
//        self.present(alert, animated: true, completion: {
//            print("completion block")
//        })
    }
}
