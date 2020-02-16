//
//  main.swift
//  StudentID_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

var customers=[Int:Customer]();
let mainMenuDesign = "+";
let billMenuDesign = "*";
var choice="0";


func initAllCustomers() {
    
    var tempCustomer:Customer;
    var tempCustomerId:Int;
    var tempFirstName:String;
    var tempLastName:String;
    var tempMobileNo:String;
    var tempEmail:String;
    
    //Details of 1st Customer
    tempCustomerId=1;
    tempFirstName="Kashyap";
    tempLastName="Jhaveri";
    tempEmail="jhaverikashyap1998@gmail.com";
    tempMobileNo="4379746768";
    
    if tempEmail.isEmailValid() && tempMobileNo.isMobileNoValid() {
        tempCustomer = Customer(tempCustomerId,tempFirstName,tempLastName,tempMobileNo,tempEmail);
        customers.updateValue(tempCustomer, forKey: tempCustomerId);
    }
    
    //Details of 2nd Customer
    tempCustomerId=2;
    tempFirstName="Ravi";
    tempLastName="Vaghela";
    tempEmail="ravivagehla@gmail.com";
    tempMobileNo="7567549732";
    
    if tempEmail.isEmailValid() && tempMobileNo.isMobileNoValid() {
        tempCustomer = Customer(tempCustomerId,tempFirstName,tempLastName,tempMobileNo,tempEmail);
        customers.updateValue(tempCustomer, forKey: tempCustomerId);
    }
    
    //Details of 3rd Customer
    tempCustomerId=3;
    tempFirstName="Nishant";
    tempLastName="Morawala";
    tempEmail="nishantmoeala@gmail.c";
    tempMobileNo="9409521797";
    
    if tempEmail.isEmailValid() && tempMobileNo.isMobileNoValid() {
        tempCustomer = Customer(tempCustomerId,tempFirstName,tempLastName,tempMobileNo,tempEmail);
        customers.updateValue(tempCustomer, forKey: tempCustomerId);
    }
    
    //Details of 4th Customer
    tempCustomerId=4;
    tempFirstName="Neel";
    tempLastName="Gotawala";
    tempEmail="neelgotawala@gmail.com";
    tempMobileNo="8200399379";
    
    if tempEmail.isEmailValid() && tempMobileNo.isMobileNoValid() {
        tempCustomer = Customer(tempCustomerId,tempFirstName,tempLastName,tempMobileNo,tempEmail);
        customers.updateValue(tempCustomer, forKey: tempCustomerId);
    }
}


func displayAllCustomers() {
    
    for customer in customers.values
    {
        customer.Display();
    }
    
}


//Execution starts from here
initAllCustomers();


