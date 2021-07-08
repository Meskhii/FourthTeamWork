//
//  SignUpViewModel.swift
//  FourthTeamWork
//
//  Created by Macbook Air on 7/8/21.
//

import Foundation

protocol SignUpViewModelProtocol: AnyObject {
    func signUp(withFullName FullName: String, withEmail Email: String, withMobilePhone phone: String, withPassword password: String)
    
    func signIn(with mail: String, with password: String, completion: @escaping ((Result<User?, RegistrationError>) -> Void))
    
    init(with coreDataManager: CoreDataManagerProtocol)
}

final class SignUpViewModel: SignUpViewModelProtocol {

    private let coreDataManager: CoreDataManagerProtocol
    
    init(with coreDataManager: CoreDataManagerProtocol) {
        self.coreDataManager = coreDataManager
    }
    
    func signIn(with mail: String, with password: String, completion: @escaping ((Result<User?, RegistrationError>) -> Void)) {
        coreDataManager.signIn(with: mail, with: password, completion: completion)
    }
    
    func signUp(withFullName FullName: String, withEmail Email: String, withMobilePhone phone: String, withPassword password: String) {
        coreDataManager.signUp(withFullName: FullName, withEmail: Email, withMobilePhone: phone, withPassword: password) { success in
            print("Sign Up Success: \(success)")
        }
    }
    
    
}


