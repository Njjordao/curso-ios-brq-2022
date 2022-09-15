//
//  BlueCircleView.swift
//  Navegation
//
//  Created by user226748 on 9/14/22.
//

import SwiftUI

struct BlueCircleView: View {
    var body: some View {
        VStack{
            
            CircBase(numberCircle: "2", color: .blue)
                           
            NavigationLink(destination: GreenCircleView(),
                label: {
                Butt(text:"proxima tela")
                
            })
        }
    }
}

struct BlueCircleView_Previews: PreviewProvider {
    static var previews: some View {
        BlueCircleView()
    }
}
