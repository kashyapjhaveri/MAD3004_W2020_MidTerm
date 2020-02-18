//
//  Float+Extension.swift
//  StudentID_W2020_MID_TERM_MAD3004
//
//  Created by Kashyap Jhaveri on 2020-02-18.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

extension Float{
    func formattedCurrency() -> String {
        let currencyFormatter = NumberFormatter();
        currencyFormatter.usesGroupingSeparator = true;
        currencyFormatter.numberStyle = .currency;
        currencyFormatter.locale = Locale.current;
        return currencyFormatter.string(from: NSNumber(value: self))!
    }
}

