import Foundation

public class ToDo {
    var id:Int
    var name: String
    var task: String
    var date: String
    var assigned: String
    public var description:String {
        get{
            return "\(assigned) will perform task \(name)"
        }
    }
    
    public init(id: Int, name: String, task: String, date: String, assigned: String) {
        self.id = id
        self.name = name
        self.task = task
        self.date = date
        self.assigned = assigned
    }
    
    func getFullname() -> String {
        
        return self.task
    }
    
    

    
}
