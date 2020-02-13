//
//  Insurance.swift
//  StudentID_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Insurance {
    var providerName:String;
    var type:String;
    var startDate:Date;
    var endDate:Date;
    var totalDays:Int;
    var totalInstallment:Int;
    
    init(_ providerName:String,_ type:String,_ startDate:Date,_ endDate:Date,_ totalDays:Int,_ totalInstallment:Int) {
        self.providerName=providerName;
        self.type=type;
        self.startDate=startDate;
        self.endDate=endDate;
        self.totalDays=totalDays;
        self.totalInstallment=totalInstallment;
    }
}
