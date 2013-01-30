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

      @weakHello = WeakRef.refWithTarget( hello )
      @weakWorld = WeakRef.refWithTarget( world )

      hello = nil
      world = nil

      puts '|'
      puts '@weakHello.class :'
      puts @weakHello.class
      puts @weakHello.target.class
      puts @weakWorld.class
      puts @weakWorld.target.class
      puts '------'
    end
    # pool.drain
      
    #GC.start
  end

  it "Returns nil if not stored otherwise" do
    puts @weakHello.target.class
    puts @weakHello.target.methods.sort

    @weakHello.target.should.be.equal( nil )
  end

    
  it "Returns valid stored object" do
     @weakWorld.target.should.be.equal( @world )
  end
end
