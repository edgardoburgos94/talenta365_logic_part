def find_word
  while true
    print "Ingrese el texto: "
    sentense = gets.chomp
    sentense_array = sentense.split(' ')

    words={}

    sentense_array.each do |word|
      if word.size > 4
        if words.has_key?(word.to_sym)
          words[word.to_sym] = words[word.to_sym]+1
        else
          words[word.to_sym]=1
        end
      end
    end

    order = words.values.sort
    second_max_value = order.sort[-2]

    second_word = words.select{|key, hash| hash == second_max_value }

    puts("")
    puts("----------------------------------------------------------------------------------------------- ")
    second_word.each do |key, value|
      puts("La segunda palabra con más de 4 letras que más se repite es: #{key} con #{value} repeticiones")
    end
    puts("-----------------------------------------------------------------------------------------------")
    puts("")
    puts("")
    puts("")
  end
end

find_word
