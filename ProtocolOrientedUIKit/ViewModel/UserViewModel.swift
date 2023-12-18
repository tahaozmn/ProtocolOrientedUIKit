//
//  UserViewModel.swift
//  ProtocolOrientedUIKit
//
//  Created by Taha Özmen on 18.12.2023.
//

import Foundation


class UserViewModel {
    
    private let userService : UserService
    weak var output : UserViewModelOutput?
        
    init(userService: UserService) {
        self.userService = userService
    }
    
    
    func fetchUsers() {
        
        userService.fetchUser { [weak self] result in
            switch result {
            case.success(let user):
                self?.output?.updateView(name: user.name, email: user.email, userName: user.username)
            case.failure(_):
                self?.output?.updateView(name: "No User", email: "", userName: "")

            }
        }
        
    }
    
    
    
}
