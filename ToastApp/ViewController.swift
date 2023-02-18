//
//  ViewController.swift
//  ToastApp
//
//  Created by MSIS SWH on 29/01/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtPassword:UITextField!
    @IBOutlet weak var txtUserName:UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BtnLogin(_ sender: UIButton) {
        if txtUserName.text=="" && txtPassword.text==""
        {
            self.showToast(message:"Please Enter Username and Password",font:.systemFont(ofSize: 12.0))
        }
      
        else if txtUserName.text==""
        {
            self.showToast(message:"Please Enter Username",font:.systemFont(ofSize: 12.0))
        }
        else if txtPassword.text==""
        {
            self.showToast(message:"Please Enter Password",font:.systemFont(ofSize: 12.0))
        }
        else {self.showToast(message:"Successful Login",font:.systemFont(ofSize: 12.0))}
    }

}

extension UIViewController {

    func showToast(message : String, font: UIFont) {

        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 220, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
             toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    } }
