class Stack{
    var arr:[Any]
    init(){self.arr=[]}
    
    func push(i:Any){
        self.arr=[i]+self.arr
    }
    func pop()->Any?{
        if self.arr.count==0{return nil}
        return self.arr.remove(at:0)
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

var s1:Stack=Stack()
print(s1.isempty())
s1.push(i:1)
s1.push(i:2)
s1.push(i:3)
s1.push(i:4)
print(s1.showAll())
print(s1.pop())
print(s1.pop())
print(s1.showAll())
print(s1.size())
print(s1.isempty())
s1.clear()
print(s1.isempty())
print(s1.showAll())

