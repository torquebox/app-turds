class PeopleWatcher
  def run
    person = Person.first
    person.do_something unless person.nil?
  end
end
