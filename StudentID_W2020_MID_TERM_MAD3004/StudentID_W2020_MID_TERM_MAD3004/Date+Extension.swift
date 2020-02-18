//
//  Date+Extension.swift
//  StudentID_W2020_MID_TERM_MAD3004
//
//  Created by Kashyap Jhaveri on 2020-02-18.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

extension Date{
    func formattedDate(format:String) -> String {
        let tempDateFormatter = DateFormatter();
        tempDateFormatter.dateFormat = format;
        return tempDateFormatter.string(from: self);
    }
}
