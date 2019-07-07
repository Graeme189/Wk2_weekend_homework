class Tab

  attr_reader :guest, :expenditure, :tab

  def initialize(guest, tab, expenditure)
    @guest = guest
    @tab = tab
    @expenditure = expenditure
  end

  def add_to_tab(expenditure)
    @tab += expenditure
    return @tab
  end

end
