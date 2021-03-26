class ApplicationController < ActionController::API


    def close_enough(str1, str2) 
        return str1==str2 || str1.include?(str2) || str2.include?(str1) || off_by(str1, str2, 2)
    end
    
    def off_by(str1, str2, num)
        diffcharcount = 0
        chars1 = str1.chars
        chars2 = str2.chars
        chars1.each_with_index do |char, i| 
            if char!=chars2[i]
                diffcharcount+=1
            end
        end
        return diffcharcount <= num
    end

end
