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
var choice="0";

let dateFormate = DateFormatter();
dateFormate.dateFormat="dd/MM/yyyy";


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
    
    if tempEmail.isEmailValid(){
        if tempMobileNo.isMobileNoValid() {
            tempCustomer = Customer(tempCustomerId,tempFirstName,tempLastName,tempMobileNo,tempEmail);
            customers.updateValue(tempCustomer, forKey: tempCustomerId);
        }
        else
        {
            print("Mobile number \(tempMobileNo) not valid");
        }
    }
    else{
        print("Email \(tempEmail) not valid");
    }
    
    //Details of 2nd Customer
    tempCustomerId=2;
    tempFirstName="Ravi";
    tempLastName="Vaghela";
    tempEmail="ravivagehla@gmail.com";
    tempMobileNo="7567549732";
    
    if tempEmail.isEmailValid(){
        if tempMobileNo.isMobileNoValid() {
            tempCustomer = Customer(tempCustomerId,tempFirstName,tempLastName,tempMobileNo,tempEmail);
            customers.updateValue(tempCustomer, forKey: tempCustomerId);
        }
        else
        {
            print("Mobile number \(tempMobileNo) not valid");
        }
    }
    else{
        print("Email \(tempEmail) not valid");
    }
    
    //Details of 3rd Customer
    tempCustomerId=3;
    tempFirstName="Nishant";
    tempLastName="Morawala";
    tempEmail="nishantmoeala@gmail.c";
    tempMobileNo="9409521797";
    
    if tempEmail.isEmailValid(){
        if tempMobileNo.isMobileNoValid() {
            tempCustomer = Customer(tempCustomerId,tempFirstName,tempLastName,tempMobileNo,tempEmail);
            customers.updateValue(tempCustomer, forKey: tempCustomerId);
        }
        else
        {
            print("Mobile number \(tempMobileNo) not valid");
        }
    }
    else{
        print("Email \(tempEmail) not valid");
    }
    
    //Details of 4th Customer
    tempCustomerId=4;
    tempFirstName="Neel";
    tempLastName="Gotawala";
    tempEmail="neelgotawala@gmail.com";
    tempMobileNo="8200399379";
    
    if tempEmail.isEmailValid(){
        if tempMobileNo.isMobileNoValid() {
            tempCustomer = Customer(tempCustomerId,tempFirstName,tempLastName,tempMobileNo,tempEmail);
            customers.updateValue(tempCustomer, forKey: tempCustomerId);
        }
        else
        {
            print("Mobile number \(tempMobileNo) not valid");
        }
    }
    else{
        print("Email \(tempEmail) not valid");
    }
    
    //Details of 5th Customer
    tempCustomerId=5;
    tempFirstName="Pruthvi";
    tempLastName="Gandhi";
    tempEmail="pruthvigandhi@gmail.com";
    tempMobileNo="9409521797";
    
    if tempEmail.isEmailValid(){
        if tempMobileNo.isMobileNoValid() {
            tempCustomer = Customer(tempCustomerId,tempFirstName,tempLastName,tempMobileNo,tempEmail);
            customers.updateValue(tempCustomer, forKey: tempCustomerId);
        }
        else
        {
            print("Mobile number \(tempMobileNo) not valid");
        }
    }
    else{
        print("Email \(tempEmail) not valid");
    }
}

func initAllBills() {
    var tempInternetObject:Internet;
    var tempMobileObject:Mobile;
    var tempHydroObject:Hydro;
    var tempInsuranceObject:Insurance;
    var tempDate=Date();
    var tempEndDate=Date();
    
    if let temp_date = dateFormate.date(from: "17/02/2020")
    {
        tempDate=temp_date;
    }
    
    //Bill Information for 1st Customer
    tempInternetObject = Internet(1, tempDate, "Bell", 100.0);
    tempMobileObject = Mobile(2, tempDate, "Fido", "Medium", 10.0, 500.0)
    if let tempCust = getCustomerById(Id: 1)
    {
        tempCust.addBill(bill: tempInternetObject);
        tempCust.addBill(bill: tempMobileObject);
    }
    
    //Bill Information for 2nd Customer
    tempInternetObject = Internet(3, tempDate, "Rogers", 150.0);
    tempMobileObject = Mobile(4, tempDate, "Chatr", "Medium", 10.0, 600.0)
    tempHydroObject = Hydro(5, tempDate, "Toronto Hydro Crop", 100);
    
    if let temp_date = dateFormate.date(from: "16/02/2022") {
        tempEndDate=temp_date;
    }
    
    tempInsuranceObject = Insurance(7, tempDate, "Aviva", "Car Insurance", tempDate, tempEndDate);
    
    if let tempCust = getCustomerById(Id: 2)
    {
        tempCust.addBill(bill: tempInternetObject);
        tempCust.addBill(bill: tempMobileObject);
        tempCust.addBill(bill: tempHydroObject);
        tempCust.addBill(bill: tempInsuranceObject);
    }
    
    
    //Bill information for 4th Customer
    if let temp_date = dateFormate.date(from: "16/02/2021") {
        tempEndDate=temp_date;
    }
    tempInsuranceObject = Insurance(7, tempDate, "Aviva", "Car Insurance", tempDate, tempEndDate);
    if let tempCust = getCustomerById(Id: 4)
    {
        tempCust.addBill(bill:tempInsuranceObject);
    }
}


func displayAllCustomers() {
    
    for customer in customers.values {
        mainMenuDesign.Repeat(n: 10);
        customer.Display();
        mainMenuDesign.Repeat(n: 10);
        print("\n");
    }
    
}

func displayAllCustomersWithBillInfo() {
    for customer in customers.values
    {
        mainMenuDesign.Repeat(n: 15);
        print("\n");
        customer.DisplayWithBillInfo();
        print("\n");
        mainMenuDesign.Repeat(n: 15);
        print("\n");
    }
}

func getCustomerById(Id:Int) -> Customer? {
    if let tempCustomer = customers[Id]
    {
        return tempCustomer;
    }
    return nil;
}


//Execution starts from here
initAllCustomers();
initAllBills();


mainMenuDesign.Repeat(n: 10);
print("\n1.Display all customers");
print("2.Display cutomer by ID");
print("3.Display all customers with bill info")
mainMenuDesign.Repeat(n: 10);

print("\nEnter your choice:- ");
choice = readLine() ?? "0";


switch choice
{
    case "1":
        displayAllCustomers();
    break;

    case "2":
        print("Enter customer id:- ");
        if let custId = Int(readLine() ?? "0")
        {
            if let tempCust = getCustomerById(Id: custId)
            {
                tempCust.Display();
            }
            else{
                print("Customer with ID \(custId) not found")
            }
        }
        else
        {
            print("Customer ID should be number only");
        }
    break;

    case "3":
        displayAllCustomersWithBillInfo();
    break;
    
    default:
    break;
}
