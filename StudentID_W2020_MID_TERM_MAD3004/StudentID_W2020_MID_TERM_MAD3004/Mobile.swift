//
//  Mobile.swift
//  StudentID_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Mobile: Bill {
    var manufacturerName:String;
    var planName:String;
//    var mobileNumber:String;
    var gbUsed:Float;
    var minuteUsed:Float;
    
    init(_ billId:Int,_ billDate:Date,_ manufacturerName:String,_ planName:String,_ gbUsed:Float,_ minuteUsed:Float) {
        self.manufacturerName=manufacturerName;
        self.planName=planName;
        //self.mobileNumber=mobileNumber;
        self.gbUsed=gbUsed;
        self.minuteUsed=minuteUsed;
        let totalAmount = (self.minuteUsed * 1) + (self.gbUsed * 3);
        super.init(billId, billDate, "Mobile",totalAmount);
    }
    
    override func Display() {
        super.Display();
        print("\tManufacturer Name:- \(self.manufacturerName)");
        print("\tPlan Name:- \(self.planName)");
        //print("Mobile Number:- \(self.mobileNumber)");
        print("\tTotal GB Used:- \(self.gbUsed)");
        print("\tTotal Minutes Used:- \(self.minuteUsed)");
    }
}
