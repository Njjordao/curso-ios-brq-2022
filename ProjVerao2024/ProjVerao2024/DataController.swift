//data contoller vai ser uma classe que vai agrupar funções que vao manipular os dados
import Foundation
import CoreData

class DataController {
    
   func save (context:NSManagedObjectContext ){
        
       do{
           try context.save()
       }catch{
            print("erro ao salvar dados ")
       }
    }

    func update (){
        
        
    }
    
    func addFood(name:String, calories:Double, context:NSManagedObjectContext){
        
        let food = Food(context:context)
        
        food.name = name
        food.calories = calories
        food.id = UUID()
        food.date = Date()
        
        save(context:context)
    }
    
    func editFood(){
        
        
        
    }
}




