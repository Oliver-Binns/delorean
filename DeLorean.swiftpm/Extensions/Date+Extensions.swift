import Foundation

extension Date {
    var month: String {
        DateFormatter(format: "MMM")
            .string(from: self).uppercased()
    }
    
    var day: String {
        DateFormatter(format: "dd").string(from: self)
    }
    
    var year: String {
        DateFormatter(format: "yyyy")
            .string(from: self)
    }
    
    var isAM: Bool {
        Calendar.current.component(.hour, from: self) < 12
    }
    
    var hour: String {
        DateFormatter(format: "h")
            .string(from: self)
    }
    
    var minute: String {
        DateFormatter(format: "mm")
            .string(from: self)
    }
}
