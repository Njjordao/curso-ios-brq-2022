
import SwiftUI

struct GreenCircleView: View {
    var body: some View {
        VStack{
            CircBase(numberCircle: "3", color: .green)
        }
        
    }
}

struct GreenCircleView_Previews: PreviewProvider {
    static var previews: some View {
        GreenCircleView()
    }
}
