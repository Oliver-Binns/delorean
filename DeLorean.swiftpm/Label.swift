import SwiftUI

struct Label: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.body.monospaced())
            .tracking(2)
            .fontWeight(.semibold)
            .textCase(.uppercase)
            .foregroundColor(.white)
            .padding(.vertical, 0)
            .padding(.horizontal, 16)
    }
}
