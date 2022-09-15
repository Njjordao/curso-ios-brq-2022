
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                CircBase(numberCircle: "1", color: .red)
                               
                NavigationLink(destination: BlueCircleView(),
                    label: {
                    Butt(text:"proxima tela")
                    
                })
                
                HomeView()
            }
        }
    }
}



struct HomeView : View{
    var body: some View {
        VStack{
        VStack{
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        HStack{
            Button("Login", action: {})
                .frame(width: 90, height: 40)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
            Button(action: {}, label: {
                Label("Esqueci minha senha", systemImage: "key")
                })
                .frame(width: 200, height: 40)
                .background(.gray)
                .foregroundColor(.white)
                .cornerRadius(20)
            
        }
        .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
