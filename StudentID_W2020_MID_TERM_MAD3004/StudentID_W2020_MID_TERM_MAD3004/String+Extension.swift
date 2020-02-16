//
//  StringExtension.swift
//  StudentID_W2020_MID_TERM_MAD3004
//
//  Created by Kashyap Jhaveri on 2020-02-15.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

extension String{
    
    func isEmailValid() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    func isMobileNoValid() -> Bool {
        let mobileNumberRegEx = "[0-9]{10}"
        let mobileTest = NSPredicate(format:"SELF MATCHES %@", mobileNumberRegEx)
        return mobileTest.evaluate(with: self)
    }
    
    func Repeat(n:Int) {
        for _ in 1...n {
            print(self, separator: " ", terminator:" ")
        }
        print("");
    }
}
