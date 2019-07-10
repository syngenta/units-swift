//
//  UnitsError.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/9/19.
//

import Foundation

enum UnitsError: Error {
    case notFound(type: String, inTable: [String: String])
    case unsupported(unit: String, type: String)
    case localization(error: Error)
}
