//
//  CoreDataManager.swift
//  FourthTeamWork
//
//  Created by Macbook Air on 7/8/21.
//

import UIKit
import CoreData

enum RegistrationError: Error {
    case userNotFound
    case unknownError
}

protocol CoreDataManagerProtocol: AnyObject {
    func signUp(withFullName FullName: String, withEmail Email: String, withMobilePhone phone: String, withPassword password: String, completion: @escaping ((Bool) -> Void))
    func signIn(with mail: String, with password: String, completion: @escaping ((Result<User?, RegistrationError>) -> Void))
    
    var context: NSManagedObjectContext? { get }
}

extension CoreDataManagerProtocol {
    var context: NSManagedObjectContext? {
        return (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    }
}

final class CoreDataManager: CoreDataManagerProtocol {
    
    func signUp(withFullName FullName: String, withEmail Email: String, withMobilePhone phone: String, withPassword password: String, completion: @escaping ((Bool) -> Void)) {
        
        guard let context = context else { return }
        let user = User(context: context)
        
        user.fullName = FullName
        user.email = Email
        user.mobilePhone = phone
        user.password = password
        
        do {
            try context.save()
            completion(true)
        } catch {
            completion(false)
        }
    }
    
    func signIn(with mail: String, with password: String, completion: @escaping ((Result<User?, RegistrationError>) -> Void)) {
        guard let context = context else { return }
        
        do {
            let p1 = NSPredicate(format: "email = %@", mail)
            let p2 = NSPredicate(format: "password = %@", password)
            let predicate = NSCompoundPredicate(andPredicateWithSubpredicates: [p1, p2])
            let request = NSFetchRequest<User>(entityName: "User")
            request.predicate = predicate
            
            let users = try context.fetch(request)
            
            if let last = users.last {
                completion(.success(last))
            } else {
                completion(.failure(.userNotFound))
            }
            
        } catch {
            completion(.failure(.unknownError))
        }
        
    }

}




