//
//  Customer.swift
//  StudentID_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Customer: IDisplay {
    
    var customerId:Int;
    var firstName:String;
    var lastName:String;
    var fullName:String
    {
        get{
            return "\(self.firstName) \(self.lastName)";
        }
    }
    
    lazy var bills=[Int:Bill]();
    
    init(customerId:Int,firstName:String,lastName:String,bills:[Int:Bill]) {
        self.customerId=customerId;
        self.firstName=firstName;
        self.lastName=lastName;
        self.bills=bills;
    }
    
    
    func Display() {
        
    }
}
