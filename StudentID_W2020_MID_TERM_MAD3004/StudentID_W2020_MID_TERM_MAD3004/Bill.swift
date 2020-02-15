//
//  Bill.swift
//  StudentID_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Bill: IDisplay {

    var billId:Int;
    var billDate:Date;
    var billType:String;
    var totalAmount:Double;
    
    init(_ billId:Int,_ billDate:Date,_ billType:String,_ totalAmount:Double) {
        self.billId=billId;
        self.billDate=billDate;
        self.billType=billType;
        self.totalAmount=totalAmount;
    }
    
    func Display() {
        print("Bill ID:- \(self.billId)");
        print("Bill Date:- \(self.billDate)");
        print("Bill Type:- \(self.billType)");
        print("Total Amt:- \(self.totalAmount)");
    }
}
