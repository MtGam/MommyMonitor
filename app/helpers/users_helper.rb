module UsersHelper

  def trimesters_for_select
    current_user.remaining_trimesters.map { |trimester| [trimester_as_words(trimester), trimester] }
  end

 def trimester_as_words(trimester)
   case trimester
   when 1
     'First Trimester'
   when 2
     'Second Trimester'
   when 3
     'Third Trimester'
   end
 end

end
