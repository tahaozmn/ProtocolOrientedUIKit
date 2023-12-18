//
//  UserService.swift
//  ProtocolOrientedUIKit
//
//  Created by Taha Özmen on 18.12.2023.
//

import Foundation


protocol UserService {
    func fetchUser(completion : @escaping(Result<User,Error>) -> Void)
}

