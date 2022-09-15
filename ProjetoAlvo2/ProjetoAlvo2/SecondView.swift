
import SwiftUI

struct SecondView: View {
    
    @Binding var isShowSecondScreen : Bool
    
    var body: some View {
        
        VStack{
            Button("Close"){
                
                isShowSecondScreen = false
            }
        }
    }
}

//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView(isShowSecondScreen = true)
//    }
//}
