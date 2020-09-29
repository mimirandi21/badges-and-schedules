require 'pry'

def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    badges = []
    attendees.each do |attendee| badges.push(badge_maker(attendee)) end
    return badges
end

def assign_rooms(attendees)
    
    #room_assignment = {}
    #count = 1
    #attendees.each do |attendee| 
    #    room_assignment[count]=attendee 
    #    count +=1 
    #end
    #room_assignment.each do |key, value| puts "Hello, #{value}! You'll be assigned to room #{key}!" end
    count = 1
    room_assignment = []
    attendees.each do |attendee|
        room_assignment.push("Hello, #{attendee}! You'll be assigned to room #{count}!") 
        count +=1
    end
    return room_assignment   
end

def printer(attendees)

    batch_badge_creator(attendees)
    assign_rooms(attendees)
    count=0
    badges_and_room_assignments = []
    while count <= attendees.length-1 
        puts badges[count]
        puts room_assignments[count]
        count +=1 
    end
    #puts badges_and_room_assignments
end    
