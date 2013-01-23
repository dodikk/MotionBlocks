describe "RMWeakRef memory management" do
  before do

      #GC.stress = true
    # NSAutoreleasePool pool = NSAutoreleasePool.alloc.init

      #hello = 'hello'
      #world = 'world'
    Kernel.autorelease_pool do
      hello = 'hello'.split("")
      world = 'world'.split("")


      @world = world

      @weakHello = RMWeakRef.alloc.initWithImpl( hello )
      @weakWorld = RMWeakRef.alloc.initWithImpl( world )

      hello = nil
      world = nil

      puts '|'
      puts '@weakHello.class :'
      puts @weakHello.class
      puts @weakHello.impl.class
      puts @weakWorld.class
      puts @weakWorld.impl.class
      puts '------'
    end
    # pool.drain
      
    #GC.start
  end

  it "Returns nil if not stored otherwise" do
    puts @weakHello.impl.class
    puts @weakHello.impl.methods.sort

    @weakHello.impl.should.be.equal( nil )
  end

    
  it "Returns valid stored object" do
     @weakWorld.impl.should.be.equal( @world )
  end
end
