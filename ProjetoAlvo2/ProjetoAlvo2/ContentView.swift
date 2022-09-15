import SwiftUI
import CoreData

struct ContentView: View {

    @State var game : Game = Game()
    @State var isAlertVisible : Bool = false
    @State var slideValue : Double = 50.0
    @State var isShowSecondScreen : Bool = false
    
    var body: some View {
        VStack{
            VStack{
                if game.points > 0{
                Text("points \(game.points)")
                    .opacity(0.5)
                    .foregroundColor(.blue)

            }
                StructView(text: "hello")
                
                AcertNumText(color: .black, text: "Diff \(game.pointDif)")
                AcertNumText(color: .blue, text: "acerte um número")
                
                SliderView(sliderNumber : $slideValue)
               
            }
            VStack{
                Text("\(game.target)")
            }
            HStack{
                
                AcertButton(slideValue : $slideValue, isAlertVisible : $isAlertVisible, game : $game)	
               
                Button("Info"){
                    isShowSecondScreen = true
                }
                .sheet(isPresented: $isShowSecondScreen, content: {
                    SecondView(isShowSecondScreen: $isShowSecondScreen)
                })
            }
            
            
            .alert("Titulo do alerta", isPresented: $isAlertVisible, actions:{
                
                AlertView(isAlertVisible: $isAlertVisible)
                
            }, message: {
                
                AcertNumText(color: .red, text: game.getMessege())
                
            })
            
        }
    }

}


struct AlertView : View{
    
    @Binding var isAlertVisible : Bool
    
    
    var body: some View{
        Button("OK", role: .cancel){
            isAlertVisible = false
        }
    }
}

struct AcertButton: View{
    
    @Binding var slideValue : Double
    @Binding var isAlertVisible : Bool
    @Binding var game : Game
    
    var body: some View{
        Button("acertei", role: .cancel){
            
                print("cliquei no botao \(Int(slideValue))")
                game.calPoint(Int(slideValue))
                game.newRound()
                
                
                isAlertVisible = true
             
        }
    }

}

struct SliderView :View{
    
    @Binding var sliderNumber : Double
    
    var body: some View{
        
        HStack{
            Text("1")
            Slider(value: $sliderNumber, in: 1...100)
            Text("100")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


