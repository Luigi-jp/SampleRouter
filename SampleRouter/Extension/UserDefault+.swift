//
//  UserDefault+.swift
//  SampleRouter
//
//  Created by 佐藤瑠偉史 on 2021/09/25.
//

import Foundation

extension UserDefaults {
    private var loginedKey: String { "logined" }
    var isLogined: Bool {
        set {
            self.setValue(newValue, forKey: loginedKey)
        }
        get {
            self.bool(forKey: loginedKey)
        }
    }
}
