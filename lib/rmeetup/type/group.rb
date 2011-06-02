module RMeetup
  module Type
    
    # == RMeetup::Type::Group
    #
    # Data wraper for a Group fethcing response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this group.
    
    # Edited by Jason Berlinsky on 1/20/11 to allow for arbitrary data access
    # See http://www.meetup.com/meetup_api/docs/groups/ for available fields
    
    class Group
      attr_accessor :group
      
      def initialize(group = {})
        self.group = group
      end
      
      def method_missing(id, *args)
        return self.group[id.id2name]
      end
      
      # Special accessors that need typecasting or other parsing
      
      def id
        return self.group['id'].to_i
      end
      def updated
        return DateTime.parse(self.group['updated'])
      end
      def created
        return DateTime.parse(self.group['created'])
      end
      def lat
        return self.group['lat'].to_f
      end
      def lon
        return self.group['lon'].to_f
      end
      def daysleft
        return self.group['daysleft'].to_i
      end
    end
  end
end