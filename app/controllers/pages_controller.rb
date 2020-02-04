class PagesController < ApplicationController
  def statistiques

  #  <% dob = Date.new(1990, 05, 04) %>
  #  <% age = Date.today.year - dob.year %>
  # <% age -= 1 if Date.today < dob + age.years %>
  #  Age (dob 1990 05 04)= <%= age %>

    allAge = []
    @indiens = Indien.all

    @indiens.each do |indien|
     indien.birthdate.year
     age = Date.today.year - indien.birthdate.year
      age2 = age - 1 if Date.today < indien.birthdate + age.years
      allAge << age2

      end
      
      @ageMoyen = allAge.sum.fdiv(allAge.size).round(1)


  end 



end
