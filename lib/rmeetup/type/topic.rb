module RMeetup
  module Type
    
    # == RMeetup::Type::Topic
    #
    # Data wraper for a Topic fethcing response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this topic.
    
    # Edited by Jason Berlinsky on 1/20/11 to allow for arbitrary data access
    # See http://www.meetup.com/meetup_api/docs/topics/ for available fields
    
    class Topic
      attr_accessor :topic
      
      def initialize(topic = {})
        self.topic = topic
      end
      
      def method_missing(id, *args)
        return self.topic[id.id2name]
      end
      
      # Special accessors that need typecasting or other parsing
      
      def id
        return self.topic['id'].to_i
      end
      def members
        return self.topic['members'].to_i
      end
      def updated
        return DateTime.parse(self.topic['updated'])
      end
    end
  end
end