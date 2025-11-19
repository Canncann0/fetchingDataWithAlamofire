//
//  UserModel.swift
//  fetchingDataWithAlamofire
//
//  Created by Dogancan turgut on 19.11.2025.
//

import Foundation

struct UserModel: Codable, Identifiable {
    let id: Int
    let name: String
    let email: String
}
