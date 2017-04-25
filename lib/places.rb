class Places
  @@places = Hash.new()


  define_method(:initialize) do |name, time|
    @name = name
    @time = time
  end

  define_method(:save) do
    @@places.store(@name, @time)
  end

  define_singleton_method(:all) do
    @@places
  end

  define_singleton_method(:clear) do
    @@places = {}
  end

end
