//
//  Insurance.swift
//  StudentID_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Insurance: Bill {
    var providerName:String;
    var type:String;
    var startDate:Date;
    var endDate:Date;
    var totalDays:Int;
    var totalInstallment:Int;
    
    var formatedStartDate:String{
        let tempDateFormatter = DateFormatter();
        tempDateFormatter.dateFormat = "dd-MMM-yyyy";
        return tempDateFormatter.string(from: self.startDate);
    }
    
    var formatedEndDate:String{
        let tempDateFormatter = DateFormatter();
        tempDateFormatter.dateFormat = "dd-MMM-yyyy";
        return tempDateFormatter.string(from: self.endDate);
    }
    
    init(_ billId:Int,_ billDate:Date,_ providerName:String,_ type:String,_ startDate:Date,_ endDate:Date) {
        self.providerName=providerName;
        self.type=type;
        self.startDate=startDate;
        self.endDate=endDate;
        self.totalDays = Calendar.current.dateComponents([.day], from: startDate, to: endDate).day!;  //https://iostutorialjunction.com/2019/09/get-number-of-days-between-two-dates-swift.html
        self.totalInstallment = Calendar.current.dateComponents([.month], from: startDate, to: endDate).month!;
        let totalAmount = self.totalInstallment * 500;
        super.init(billId, billDate, "Insurance", Float(totalAmount));
    }
    
    override func Display() {
        super.Display();
        print("\tProvider Name:- \(self.providerName)");
        print("\tInsurance Type:- \(self.type)");
        print("\tStart Date:- \(self.formatedStartDate)");
        print("\tEnd Date:- \(self.formatedEndDate)");
        print("\tTotal Days:- \(self.totalDays)");
        print("\tTotal Installments of $500:- \(self.totalInstallment)");
    }
}
