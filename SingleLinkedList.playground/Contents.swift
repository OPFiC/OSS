class SingleLinkedList{
    var head,tail:Node?
    init(){
        self.head=nil
        self.tail=nil
    }
    
    class Node{
        var data:String
        var next:Node?
        init(data:String){
            self.data=data
            self.next=nil
        }
    }
    
    func append(data:String){
        if self.head==nil && self.tail==nil{
            self.head=Node(data: data) //data:String하면 컴파일 오류
            self.tail=self.head
        }
        else{
            let tmp=Node(data: data)
            self.tail?.next=tmp
            self.tail=tmp
        }
    }
    func pop()->String!{
        var tmp=self.head
        var prev:Node?=nil
        while tmp !== self.tail{
            prev = tmp
            tmp = tmp?.next
        }
        if tmp === self.head {
            self.head = nil
            self.tail = nil
            return tmp?.data
        }
        self.tail = prev
        prev?.next = nil
        return tmp?.data
    }
    func isEmpty()->Bool{
        return self.head == nil
    }
    
    func showAll(){
        var tmp:Node?=self.head
        print(tmp?.data)
        while tmp !== self.tail{
            tmp=tmp?.next
            print(tmp?.data)
        }
    }
    
    func size()->Int{
        var count=0
        var tmp:Node?=self.head
        if tmp != nil{
            count=1
            while tmp !== self.tail{
                tmp=tmp?.next
                count+=1
            }
        }
        return count
    }
    
    func clear(){
        self.head=nil
        self.tail=nil
    }
}

var s1=SingleLinkedList()
print(s1.isEmpty())
print(s1.size())
s1.append(data: "1")
s1.append(data: "2")
print(s1.size())
s1.append(data: "3")
s1.append(data: "4")
s1.showAll()
print(s1.size())
print(s1.isEmpty())
s1.pop()
s1.pop()
s1.pop()
print(s1.size())
s1.pop()
print(s1.isEmpty())
      
            

