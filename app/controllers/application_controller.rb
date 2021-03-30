class ApplicationController < ActionController::API


    def authenticate
        auth_header = request.headers["Authorization"]
        token = auth_header.split.last
        payload = JWT.decode(token, ENV["JWT_SECRET"], true, { algorithm: 'HS256' }).first
        @user = User.find_by(id: payload["user_id"])
      rescue
        render json: { errors: ["Unauthorized"] }, status: :unauthorized
    end

    # def close_enough(str1, str2) 
    #     str1 = str1.downcase
    #     str2 = str2.downcase
    #     return str1==str2 || str1.include?(str2) || str2.include?(str1) || off_by(str1, str2, 2)
    # end
    
    # def off_by(str1, str2, num)
    #     diffcharcount = 0
    #     chars1 = str1.chars
    #     chars2 = str2.chars
    #     chars1.each_with_index do |char, i| 
    #         if char!=chars2[i]
    #             diffcharcount+=1
    #         end
    #     end
    #     return diffcharcount <= num
    # end

end
