class Dictionary

    def initialize
      @entries = {}
      @keywords = []
    end

    def entries
      @entries
    end

    def keywords
      @keywords.sort
    end

    def entries=()
      @entries
    end

    def keywords=()
      @keywords
    end

    def add(entry)
      if entry == entry.to_s
        entry = {entry => nil}
      end
      entry.each do |k,v|
        @keywords << k
        @entries[k] = v
      end

    end


    def include?(find_key)
      if @keywords.empty?
        return false
      end
      @keywords.each do |key|
        if key == find_key
          return true
        else
          return false
        end
      end
    end

    def find(item_find)
      @entries.select{|k,v| k.start_with? item_find}
    end


  end
