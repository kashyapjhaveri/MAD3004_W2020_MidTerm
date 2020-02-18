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
    var totalAmount:Float;
    
    var formatedBillDate:String{
        return self.billDate.formattedDate(format: "dd-MMM-yyyy")
    }
    
    var formattedTotalAmount:String{
        return self.totalAmount.formattedCurrency();
    }
    
    init(_ billId:Int,_ billDate:Date,_ billType:String,_ totalAmount:Float) {
        self.billId=billId;
        self.billDate=billDate;
        self.billType=billType;
        self.totalAmount=totalAmount;
    }
    
    func Display() {
        print("\n\tBill ID:- \(self.billId)");
        print("\tBill Date:- \(self.formatedBillDate)");
        print("\tBill Type:- \(self.billType)");
        print("\tTotal Amt:- \(self.formattedTotalAmount)");
    }
}
