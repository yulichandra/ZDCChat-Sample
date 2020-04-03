//
//  Environment+Zendesk.swift
//  Zendesk Sample
//
//  Created by Yuli Chandra on 04/04/20.
//  Copyright © 2020 Yuli Chandra. All rights reserved.
//

import Foundation

extension Environment {
    static let accountKey: String = {
        guard let key = Environment.infoDictionary[Keys.Zendesk.accountKey] as? String else {
            fatalError("Account Key Not Found")
        }
        return key
    }()
}

extension Environment.Keys {
    struct Zendesk {
        static let accountKey = "ZDC_AccountKey"
    }
}
