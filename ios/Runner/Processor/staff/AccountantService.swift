//
//  AccountantService.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 18.08.2022.
//

import Foundation

protocol AccountantService {
    func calculateIncome(inCome: Int)
    func calculateOutCome()
    func payTaxes()
}
