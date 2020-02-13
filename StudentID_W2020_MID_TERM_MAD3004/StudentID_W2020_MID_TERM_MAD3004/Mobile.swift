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
    var mobileNumber:String;
    var gbUsed:Float;
    var minuteUsed:Float;
    
    init(_ billId:Int,_ billDate:Date,_ billType:String,_ totalAmount:Double,_ manufacturerName:String,_ planName:String,_ mobileNumber:String,_ gbUsed:Float,_ minuteUsed:Float) {
        self.manufacturerName=manufacturerName;
        self.planName=planName;
        self.mobileNumber=mobileNumber;
        self.gbUsed=gbUsed;
        self.minuteUsed=minuteUsed;
        super.init(billId, billDate, billType, totalAmount);
    }
    
    override func Display() {
        
    }
}
