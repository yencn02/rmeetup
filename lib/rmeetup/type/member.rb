module RMeetup
  module Type
    
    # == RMeetup::Type::Member
    #
    # Data wraper for a Member fethcing response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this member.
    
    # Edited by Jason Berlinsky on 1/20/11 to allow for arbitrary data access
    # See http://www.meetup.com/meetup_api/docs/members/ for available fields
    
    class Member
      attr_accessor :member
      
      def initialize(member = {})
        self.member = member
      end
      
      def method_missing(id, *args)
        return self.member[id.id2name]
      end
      
      # Special accessors that need typecasting or other parsing
      
      def id
        return self.member['id'].to_i
      end
      def lat
        return self.member['lat'].to_f
      end
      def lon
        return self.member['lon'].to_f
      end
    end
  end
end