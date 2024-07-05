def validate_email(email)
    email_regex = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    if email = email_regex
      return true
    else
      return false
    end
end
puts validate_email(vaishnavi@gmail)
  