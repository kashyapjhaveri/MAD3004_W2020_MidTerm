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
    
    override init(_ billId:Int,_ billDate:Date,_ agencyName:String,_ unitConsumed:Float) {
        self.agencyName=agencyName;
        self.unitConsumed=unitConsumed;
        let totalAmount = self.unitConsumed * 10;
        super.init(billId, billDate, "Hydro", totalAmount);
    }
    
    override func Display() {
        super.Display();
        print("\tAgency Name:- \(self.agencyName)");
        print("\tUnit Consumed:- \(self.unitConsumed)");
    }
}
