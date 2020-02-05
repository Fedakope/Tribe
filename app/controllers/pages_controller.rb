class PagesController < ApplicationController
  def statistiques

    ageAll = [];
    indiens = Indien.all

    indiens.each do |indien|
     age = Date.today.year - indien.birthdate.year
     if (Date.today < (indien.birthdate + age.years))
      age = age -1
     end
     ageAll << age
    end

    @older = ageAll.max
    @ageMoyen = ageAll.sum.fdiv(ageAll.size)
    ageMaxPosition = ageAll.index(ageAll.max)
    @ppl = Indien.find(ageMaxPosition+1)

  end


end


