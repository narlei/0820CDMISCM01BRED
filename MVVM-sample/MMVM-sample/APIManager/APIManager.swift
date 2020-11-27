//
//  ApiManager.swift
//  MMVM-sample
//
//  Created by Nadilson Santana on 12/08/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation
import Alamofire

class APIManager {
    
    typealias completion <T> = (_ result: T, _ failure: Bool) -> Void
    
    func getMeme(completion: @escaping completion<[Meme]?>) {
        
        AF.request("https://api.imgflip.com/get_memes").responseJSON { response in
            if let data = response.data {
                
                let result = try? JSONDecoder().decode(Result.self, from: data)
                completion(result?.data.memes, true)
            }
            completion(nil, false)
        }
        
        
    }
    
    
    
    func request(url: String, completion: @escaping (_ json: [String: Any]?, _ jsonArray: [[String: Any]]?, _ error: String?) -> Void) {
        
        AF.request(url).responseJSON { response in
            guard let jsonObj = response.value else {
                completion(nil, nil, "")
                return
            }
            
            if let json = jsonObj as? [String: Any] {
                if let jsn = json["error"] as? [String:Any] {
                    completion(nil, nil, "")
                } else {
                    completion(json, nil, nil)
                }
            } else if let jsonArray = jsonObj as? [[String: Any]] {
                completion(nil, jsonArray, nil)
            } else {
                completion(nil, nil, "")
            }
            
        }
        completion(nil,nil, "")
    }
}
