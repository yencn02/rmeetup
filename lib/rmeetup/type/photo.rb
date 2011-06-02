module RMeetup
  module Type
    
    # == RMeetup::Type::Photo
    #
    # Data wraper for a Photo fethcing response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this photo.
    
    # Edited by Jason Berlinsky on 1/20/11 to allow for arbitrary data access
    # See http://www.meetup.com/meetup_api/docs/photos/ for available fields
    
    class Photo
      attr_accessor :photo
      
      def initialize(photo = {})
        self.photo = photo
      end
      
      def method_missing(id, *args)
        return self.photo[id.id2name]
      end
      
      # Special accessors that need typecasting or other parsing
      
      def created
        return DateTime.parse(self.photo['created'])
      end
    end
  end
end