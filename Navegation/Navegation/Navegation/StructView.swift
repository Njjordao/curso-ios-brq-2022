
import SwiftUI

struct Butt : View{
    
    var text : String
    
    var body: some View{
        
        Text(text)
            .frame(width: 200, height: 40)
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(20)
    }
}

struct CircBase : View{
    
    var numberCircle : String
    var color : Color
    
    var body: some View{

            ZStack{
                Circle()
                    .frame(width: 150, height: 150)
                    .foregroundColor(color)
                    
                Text(numberCircle)
                    .foregroundColor(.white)
                    .font(.system(size: 70))
            }
    }
    
}



