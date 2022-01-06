//
//  NetworkURL.swift
//  tryTableView
//
//  Created by 양호준 on 2022/01/06.
//

import Foundation

enum NetworkURL: Int {
    private static let hostAPI = "https://wallpaperaccess.com/download"
    
    case firstImage = 0
    case secondImage = 1
    case thirdImage = 2
    
    var url: String {
        switch self {
        case .firstImage:
            return NetworkURL.hostAPI + "/europe-4k-1369012"
        case .secondImage:
            return NetworkURL.hostAPI + "/europe-4k-1318341"
        case .thirdImage:
            return NetworkURL.hostAPI + "/europe-4k-1379801"
        }
    }
}
