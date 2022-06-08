import SwiftUI

protocol SegmentRepresentable {
    var binaryValue: UInt { get }
}

extension String: SegmentRepresentable {
    var binaryValue: UInt {
        switch self {
        case "0", "O", "D": return 0x7E
        case "1": return 0x30
        case "2": return 0x6D
        case "3": return 0x79
        case "4": return 0x33
        case "5": return 0x5B
        case "6": return 0x5F
        case "7": return 0x70
        case "8", "B": return 0x7F
        case "9": return 0x7B
        case "A": return 0x77
        case "C": return 0x4E
        case "E": return 0x4F
        case "F": return 0x47
        case "J": return 0x38
        case "N": return 0x76
        case "T": return 0x0F
        case "U": return 0x3E
        default: return 0
        }
    }
}
