import SwiftUI

struct Segment: View {
    let character: String
    
    let segmentMapping1 = [-1: 6, 0: 0, 1: 3]
    let segmentMapping2 = [
        [1, 5],
        [2, 4]
    ]
    
    var body: some View {
        ZStack {
            ForEach(-1...1, id: \.self) { index in
                SegmentShape()
                    .scale(x: 0.7, y: 0.20, anchor: .center)
                    .offset(x: 0, y: 20 * CGFloat(index))
                    .if(isOff(segmentIndex: segmentMapping1[index]!)) {
                        $0.foregroundColor(.white.opacity(0.3))
                    }
            }
            
            ForEach(0...1, id: \.self) { yIndex in 
                ForEach(0...1, id: \.self) { xIndex in
                    SegmentShape()
                        .scale(x: 0.7, y: 0.20, anchor: .center)
                        .rotation(.radians(.pi / 2))
                        .offset(x: -10 + 20 * CGFloat(xIndex), 
                                y: -10 + 20 * CGFloat(yIndex))
                        .if(isOff(segmentIndex: segmentMapping2[yIndex][xIndex])) {
                            $0.foregroundColor(.white.opacity(0.3))
                        }
                }
            }
        }
        .frame(width: 25, height: 50)
    }
    
    private func isOff(segmentIndex: Int) -> Bool {
        let shiftedBits: UInt = 1 << segmentIndex
        let isBitEnabled = character.binaryValue & shiftedBits
        let unshiftedBits = isBitEnabled >> segmentIndex
        return !Bool(truncating: unshiftedBits as NSNumber)
    }
}
