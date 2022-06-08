import SwiftUI

struct SegmentGroup: View {
    let title: String
    let segments: [String]
    
    init(title: String, segments: String = "") {
        self.title = title
        self.segments = segments.map(String.init)
    }
    
    var body: some View {
        VStack(spacing: 2) {
            Label(title: title).background(.red)
            
            HStack {
                ForEach(0..<segments.count, id: \.self) { index in 
                    Segment(character: segments[index])
                }
            }
            .padding(4)
            .background(.black)
            .border(Color(.systemGray3), width: 1)
        }
    }
}
