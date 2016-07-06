class Places

  @@list_places = []

  define_method(:initialize) do |destination|
    @destination = destination
  end

  define_method(:destination) do
    @destination
  end

  define_singleton_method(:list) do
    @@list_places
  end

  define_method(:save) do
    @@list_places.push(self)
  end

  define_singleton_method(:clear) do
    @@list_places = []
  end
end
