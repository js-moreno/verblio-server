class TalkSerializer < ActiveModel::Serializer
  attributes :id, :title, :abstract, :room, :speaker, :attendees

  def speaker
    speaker = self.object.speaker
    {
      id: speaker.id,
      name: speaker.name,
      company: speaker.company,
      email: speaker.email,
      bio: speaker.bio,
    }
  end

  def attendees
    attendees = self.object.attendees
    attendees.each do |attendee|
      {
        id: attendee.id,
        name: attendee.name,
        company: attendee.company,
        email: attendee.email,
        registered: attendee.registered,
      }
    end
  end

end
