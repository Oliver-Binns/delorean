import SwiftUI

struct DateTime: View {
    let title: String
    let date: Date
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                SegmentGroup(title: "Month",
                             segments: date.month)
                
                SegmentGroup(title: "Day", 
                             segments: date.day)
                
                SegmentGroup(title: "Year", 
                             segments: date.year)
                
                VStack {
                    Label(title: "am").background(.red)
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(date.isAM ? .green : .black)
                    Label(title: "pm").background(.red)
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(date.isAM ? .black : .green)
                }
                SegmentGroup(title: "Hour", segments: date.hour)
                SegmentGroup(title: "Min", segments: date.minute)
                    
            }
            Label(title: title).background(.black)
            Spacer()
        }
        .padding(4)
    }
}

