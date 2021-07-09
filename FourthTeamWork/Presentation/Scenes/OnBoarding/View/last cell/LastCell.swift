//
//  LastCell.swift
//  FourthTeamWork
//
//  Created by Ana Mepisashvili on 08.07.21.
//


import UIKit

protocol clickedDelegate : AnyObject{
    func signIn()
    func signUp()
}

class LastCell: UICollectionViewCell{

   weak var delegate: clickedDelegate?

    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    var viewController: BaseViewController?

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        signInBtn.layer.cornerRadius = 20
        signUpBtn.layer.cornerRadius = 20

        signInBtn.backgroundColor = .systemGreen
        signUpBtn.backgroundColor = .systemGreen

    }

    @IBAction func signIn(_ sender: Any) {
        // კოორდინატორი რომ დაემატება აქედან გადავა signIn-ზე
        delegate?.signIn()
        print("Sing in")
    }
    @IBAction func signUp(_ sender: Any) {
        // კოორდინატორი რომ დაემატება აქედან გადავა signUp-ზე
        delegate?.signUp()
        print("Sing Up")

    }
}




    
