class PeopleWatcher
  attr_accessor :log
  def run
    # person = Person.first
    # person.do_something unless person.nil?
    Person.say_wtf
    log.info("my sharona bleu")
  end
end
