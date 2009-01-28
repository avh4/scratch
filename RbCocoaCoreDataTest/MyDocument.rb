#
#  MyDocument.rb
#  RbCocoaCoreDataTest
#
#  Created by Aaron VonderHaar on 1/28/09.
#  Copyright (c) 2009 __MyCompanyName__. All rights reserved.
#

require 'osx/cocoa'
OSX.require_framework 'CoreData'

class MyDocument < OSX::NSPersistentDocument

  @@model_registered = false

  def windowNibName
    return "MyDocument"
  end

  def windowControllerDidLoadNib(aController)
    super_windowControllerDidLoadNib(aController)
    # user interface preparation code
  end

  # define accessors for properties of models
  def setManagedObjectContext(context)
    super_setManagedObjectContext(context)
    unless @@model_registered
      OSX::CoreData.define_wrapper(managedObjectModel)
      @@model_registered = true
    end
  end
end
