class Islem
    @@countp = 0
  
    def initialize(a)
          @getcounter
          @islemsuresi = a    
    end    
  
    def display
      @@countp += 1
      @getcounter = @@countp
      puts  "#{@@countp}. islemin islemsuresi #{@islemsuresi}"
    end
  
    def getCountp
      @getcounter  
    end
  
    def get
      @islemsuresi
    end
  
    def getDisplay
      if @islemsuresi < 0
        return 0
      else
        return @islemsuresi
      end
    end
  
    def set(i)
      @islemsuresi = i
    end
  end
  
  def RoundRobinAlg
  
    @time = 0
    p1=Islem.new(7)
    p1.display
    p2=Islem.new(12)
    p2.display
    p3=Islem.new(19)
    p3.display
  
    cpu = Queue.new
    cpu << p1
    cpu << p2
    cpu << p3
    puts"time : #{@time} "
    puts" "
    while cpu.size > 0
      @time += 3 
      x=cpu.pop
      x.set(x.get-3)
      if x.get <= 0
        @time += x.get
      else 
        cpu << x
      end
      puts"sure : #{@time} ||| islemNO : #{x.getCountp} ||| kalan : #{x.getDisplay}"
    end
  
  end
    
  RoundRobinAlg()
  