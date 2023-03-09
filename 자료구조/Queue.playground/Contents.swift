class Queue{
    var arr:[Any]
    init(){self.arr=[]}
    
    func push(i:Any){
        self.arr=[i]+self.arr
    }
    func pop()->Any{
        return self.arr.removeLast()
    }
    func clear(){
        self.arr.removeAll()
    }
    
    func isempty()->Bool{
        if self.arr.count==0{return true}
        else {return false}
    }
    
    func size()->Int{
        return self.arr.count
    }
    func showAll()->Array<Any>{
        return self.arr
    }
    
}

var q1:Queue=Queue()
print(q1.isempty())
q1.push(i:1)
q1.push(i:2)
q1.push(i:3)
q1.push(i:4)
print(q1.showAll())
print(q1.pop())
print(q1.pop())
print(q1.showAll())
print(q1.size())
print(q1.isempty())
q1.clear()
print(q1.isempty())
print(q1.showAll())
