# your code goes here
class Person
  attr_reader :name
  attr_accessor :bank_account,:happiness,:hygiene
  def initialize(name)
    @name=name
    @bank_account=25
    @hygiene=8
    @happiness=8
  end
  # def bank_account=(value)
  #   self.bank_account=value
  # end
  def happiness=(value)
    @happiness = value
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end
  def hygiene=(value)
    @hygiene = value
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end
  def clean?
    @hygiene>7
  end
  def happy?
    @happiness>7
  end
  def get_paid(amount)
    self.bank_account += amount
    self.happiness += 1
    return "all about the benjamins"

  end  

  def take_bath
    self.hygiene+=4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness+=2
    self.hygiene-=3
    return "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
    [friend, self].each {|o| o.happiness += 3 }
    "Hi #{friend.name}! It's #{self.name}. How are you?"
end   

def start_conversation(person,topic)
  objects =[self,person]
  case topic
  when "politics"
      objects.each { |o| o.happiness -= 2}
      "blah blah partisan blah lobbyist"
  when "weather"    
      objects.each { |o| o.happiness += 1}
      "blah blah sun blah rain"
  else    
      "blah blah blah blah blah"
  end    
end    
end    
