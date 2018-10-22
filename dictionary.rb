class Dictionary
  @@word_list = {}
  def initialize()
    @new_word = {}

  end
  def add (new_word)
    if new_word.class == String
      @new_word = { :"#{new_word}" => nil }
    else
      @new_word = new_word
    end

     @@word_list =  @new_word.merge(@@word_list)

    # options = defaults.merge(options)
  end

  def entries
      if @new_word.values
        return @new_word
      else
        return @new_word.keys
      end
  end

    def keywords

      return @new_word.keys
    end


    def find (find_item)

      @@word_list.each do |key, value|
        if key == find_item
          return true
        else
          return false
        end
      end

    end
  #
  #



  # def add()
  #   return @new_word
  # end

  # def show_words
  #   @@word_list.each do |key, value|
  #     puts "#{key}..#{value}"
  #
  #   end



  #
  def include?(test_word)

    @@word_list.each do |key, value|
      if key == test_word
        return true
      else
        return false
      end
    end
  end

end
# my_word1 = Dictionary.new
# my_word1.add = ({'fish' => 'aquatic animal'})
#
# my_word2 = Dictionary.new
# my_word2.add = ({'crab' => 'aquatic animal'})
#
# # puts "#{my_word.add}"
#
# puts "#{my_word1.show_words}"
# puts Dictionary.show_words
