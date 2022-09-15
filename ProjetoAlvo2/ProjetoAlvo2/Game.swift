
import Foundation

class Game{
    var target : Int = Int.random(in: 1...100)
    var points : Int = 0
    var pointDif  :Int = 0
    
    func calPoint(_ sliderNumber: Int){
        pointDif = abs(target - sliderNumber )
        points += pointDif
        print("\(points)")
    }
    func newRound(){
        target = Int.random(in: 1...100)
    }
    
    func getMessege () -> String{
        if pointDif == 0{
            return"vc acertou"
        }else{
            return"vc errou"
        }
    }
}
