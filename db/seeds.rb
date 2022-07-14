# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Speaker.create(
    [
        {
            name: "Hendrix Carroll",
            company: "Songlines",
            email: "hendrixcarroll@songlines.com",
            bio: "Magna velit adipisicing ullamco sint duis nisi."
        },
        {
            name: "Melody Juarez",
            company: "Zillatide",
            email: "melodyjuarez@zillatide.com",
            bio: "Veniam do eu quis officia enim."
        }
    ]
)

Attendee.create(
    [
        {
            name: "Sanders Riley",
            company: "Comtext",
            email: "sandersriley@comtext.com",
            registered: "2015-05-24T02:15:04 +07:00"
        },
        {
            name: "Bean Cline",
            company: "Utarian",
            email: "beancline@utarian.com",
            registered: "2015-06-21T02:54:39 +07:00"
        },
        {
            name: "Alfreda Mitchell",
            company: "Dreamia",
            email: "alfredamitchell@dreamia.com",
            registered: "2015-09-22T06:35:29 +07:00"
        }
    ]
)

Talk.create(
    [
        {
            title: "CILLUM NON",
            abstract: "Aliqua consequat mollit Lorem dolor nulla qui sunt tempor veniam eiusmod ullamco quis commodo.",
            room: 873,
            speaker_id: Speaker.find_by(name: "Hendrix Carroll").id
        },
        {
            title: "AD IPSUM",
            abstract: "Fugiat nisi et mollit consequat sint.",
            room: 343,
            speaker_id:Speaker.find_by(name: "Melody Juarez").id
        }
    ]
)

Attendee.all.each do |attendee|
    Attendance.create(
        talk_id: Talk.find_by(title: "CILLUM NON").id,
        attendee_id: attendee.id
    ) 
end
