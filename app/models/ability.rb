class Ability
  include CanCan::Ability

  def initialize(user)
    if voluntary_signed_in?

      can :create, VoluntaryJob
      can [:delete, :read], VoluntaryJob do |v|
        v.voluntary_id == voluntary.id
      end

      can [:read, :create, :update], Address do |a|
        a.addressable_type == "institution" && a.addressable_id = institution.id
      end

      can [:read, :create, :update], Phone do |p|
        p.phonegable_type == "voluntary" && p.phonegable_id = institution.id
      end
    end

    if institution_signed_in?
      can [:read, :create, :destroy, :update], Job do |j|
        j.institution_id = institution.id
      end

      can [:read, :create, :update], Address do |a|
        a.addressable_type == "institution" && a.addressable_id = institution.id
      end

      can [:read, :create, :update], Phone do |p|
        p.phonegable_type == "voluntary" && p.phonegable_id = institution.id
      end

      can [:delete, :update, :read], VoluntaryJob do |v|
        Job.institution_id = institution.id && v.job_id == Job.institution_id
      end

    end
  end
end
