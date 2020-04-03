//
//  Environment.swift
//  Zendesk Sample
//
//  Created by Yuli Chandra on 04/04/20.
//  Copyright © 2020 Yuli Chandra. All rights reserved.
//

import Foundation

import Foundation

public struct Environment {
    public struct Keys {
    }

    // MARK: - Plist
    static let infoDictionary: [String: Any] = {
      guard let dict = Bundle.main.infoDictionary else {
        fatalError("Plist file not found")
      }
      return dict
    }()
}
