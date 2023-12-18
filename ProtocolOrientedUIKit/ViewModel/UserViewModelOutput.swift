//
//  UserViewModelOutput.swift
//  ProtocolOrientedUIKit
//
//  Created by Taha Özmen on 18.12.2023.
//

import Foundation

protocol UserViewModelOutput : AnyObject {
    
    func updateView(name: String, email: String, userName: String)
    
}
