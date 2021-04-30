module GameMembersHelper
  def member_name(partner)
    partner.member&.name? ? partner.member&.name : partner.member.email
  end

  def game_place(partner)
    partner.game&.place
  end

  def event_date(partner)
    partner.game&.event_date
  end
end
