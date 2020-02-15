//
//  Hydro.swift
//  StudentID_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Hydro: Bill {
    var agencyName:String;
    var unitConsumed:Float;
    
    init(_ billId:Int,_ billDate:Date,_ billType:String,_ totalAmount:Double,_ agencyName:String,_ unitConsumed:Float) {
        self.agencyName=agencyName;
        self.unitConsumed=unitConsumed;
        super.init(billId, billDate, billType, totalAmount);
    }
    
    override func Display() {
        super.Display();
        print("Agency Name:- \(self.agencyName)");
        print("Unit Consumed:- \(self.unitConsumed)");
    }
}
