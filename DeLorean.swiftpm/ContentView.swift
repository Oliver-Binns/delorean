import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            DateTime(title: "Destination Time", 
                     date: .distantFuture)
            .foregroundColor(.pink)
            
            Divider()
                .frame(height: 2)
                .background(.black)
            
            DateTime(title: "Present Time", 
                     date: .now)
            .foregroundColor(.green)
            
            Divider()
                .frame(height: 2)
                .background(.black)
            
            DateTime(title: "Last Time Departed", 
                     date: .distantPast)
            .foregroundColor(.yellow)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(.gray)
    }
}

