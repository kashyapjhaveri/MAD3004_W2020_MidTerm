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
    var mobileNumber:String;
    var email:String;
    lazy var bills=[Int:Bill]();
    
    init(_ customerId:Int,_ firstName:String,_ lastName:String,_ mobileNumber:String,_ email:String) {
        self.customerId=customerId;
        self.firstName=firstName;
        self.lastName=lastName;
        self.mobileNumber=mobileNumber;
        self.email=email;
    }
    
    func addBill(bill:Bill){
        self.bills.updateValue(bill, forKey: self.customerId);
    }
    
    func Display() {
        print(" ");
        print("Customer ID:- \(self.customerId)");
        print("Full Name:- \(self.fullName)");
        print("Mobile No:- \(self.mobileNumber)");
        print("Email:- \(self.email)");
        print(" ");
    }
}
