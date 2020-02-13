//
//  Internet.swift
//  StudentID_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Internet: Bill {
    
    var providerName:String;
    var gbUsed:Float;
    
    
    init(_ billId:Int,_ billDate:Date,_ billType:String,_ totalAmount:Double,_ providerName:String,_ gbUsed:Float) {
        self.providerName=providerName;
        self.gbUsed=gbUsed;
        super.init(billId, billDate, billType, totalAmount);
    }
    
}
