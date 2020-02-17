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
    
        
    override init(_ billId:Int,_ billDate:Date,_ providerName:String,_ gbUsed:Float) {
        self.providerName=providerName;
        self.gbUsed=gbUsed;
        let totalAmount = self.gbUsed * 5;
        super.init(billId, billDate, "Internet",totalAmount);
    }
    
    override func Display() {
        super.Display();
        print("Provder Name:- \(self.providerName)");
        print("Total GB Used:- \(self.gbUsed)");
    }
}
