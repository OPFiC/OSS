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
for i in 1...100{
    s1.append(data:String(i))
}

for _ in 1...100{
    print(s1.pop())
}

