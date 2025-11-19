//
//  ViewModel.swift
//  fetchingDataWithAlamofire
//
//  Created by Dogancan turgut on 19.11.2025.
//

import Foundation
import Alamofire

class ViewModel: ObservableObject {
    
    @Published  var users = [UserModel]()
    
    func loadUsers() {
        
        AF.request("https://jsonplaceholder.typicode.com/users")
        
            .validate()
        
            .responseDecodable(of: [UserModel].self) { [ weak self ] response in
                
                switch response.result {
                    
                case .success(let fetchedData):
                    DispatchQueue.main.async {
                        self?.users = fetchedData
                    }
                case .failure(let error):
                    print("Error fetching users: \(error.localizedDescription)")
                    
                }
                
            }
        
    }
}
