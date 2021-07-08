//
//  SignUpViewController.swift
//  FourthTeamWork
//
//  Created by Macbook Air on 7/8/21.
//

import UIKit

class SignUpViewController: BaseViewController {
    
    

    @IBOutlet weak var stackViewFields: UIStackView!
    @IBOutlet weak var signUpBtn: UIButton!
    
    private var isChecked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        
        let backButton = UIBarButtonItem(image: UIImage(named: "myBack"), style: .plain, target: self, action: #selector(onBack))
            self.navigationItem.leftItemsSupplementBackButton = true
            self.navigationItem.leftBarButtonItem = backButton
        
    }
    
    @objc func onBack() {
        
    }
    
    
    @IBAction func onSignUp(_ sender: Any) {
        
    }
    
    
    @IBAction func onCheck(_ sender: UIButton) {
        let imageName = isChecked ? "checkEmpty" : "checkBtn"
        sender.setImage(UIImage(named: imageName), for: .normal)
        isChecked.toggle()
    }
    
    private func setupLayout() {
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = "Sign Up"
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.init(hex: "242126")]
        
        //MARK: - set style for field
        stackViewFields.arrangedSubviews.forEach {
            $0.layer.cornerRadius = 20
            $0.backgroundColor = UIColor(hex: "EFEFEF")
        }
        
        //MARK: - set style for Sing Up Button
        signUpBtn.layer.cornerRadius = 20
        signUpBtn.layer.borderWidth = 1
        signUpBtn.layer.borderColor = UIColor.init(hex: "5ABD8C").cgColor
        
    }

}
