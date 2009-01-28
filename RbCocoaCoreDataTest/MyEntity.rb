#
#  MyEntity.rb
#  RbCocoaCoreDataTest
#
#  Created by Aaron VonderHaar on 1/28/09.
#  Copyright (c) 2009 __MyCompanyName__. All rights reserved.
#

require 'osx/cocoa'

class MyEntity < OSX::NSManagedObject

  def myHash
    return "House"
  end
  
  def myHash=(v)
  end
  
end
