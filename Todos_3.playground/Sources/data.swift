import Foundation

public class data {
    
    public var ToDos: [ToDo]
    
    public init() {
        
        ToDos = [ToDo]()
    }
    
    public func addItem(item: ToDo) {
        ToDos.append(item)
        print("Added task ID \(item.id) which is \(item.description)")
    }
    
    public func printAllToDos() {
        each(ToDos) { print("item \($1) is id \($0.id) \($0.description)") }
    }
    
    public func findByID(ID: Int) {
        for ToDo in ToDos{
            if ToDo.id == ID{
                print(ToDo.description)
            }
        }
    }
    
    public func replaceAtID(ID: Int, item: ToDo) {
        var index = 0
        for ToDo in ToDos{
            if ToDo.id == ID{
                ToDos[index] = item
                print("ToDo ID \(ID) changed to \(ToDos[index].description)")
            }
            index += 1
        }
    }
    
    public func deleteAtID(ID: Int) {
        var index = 0
        for ToDo in ToDos{
            if ToDo.id == ID{
                ToDos.removeAtIndex(index)
               // print("ToDo ID \(ID) changed to \(ToDos[index].description)")
            }
            index += 1
        }
    }
    
    
    func each(items: [ToDo], closure: (item: ToDo, index: Int) -> Void) {
        
        func iterator(items: [ToDo], closure: (item: ToDo) -> Void) {
            
            for var index = 0; index < items.count; ++index {
                
                closure(item: items[index])
            }
        }
        
        var index = 0;
        
        iterator(items) { closure(item: $0, index: index++) }
    }
}