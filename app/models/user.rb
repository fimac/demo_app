class User < ApplicationRecord
  secure_search :email

  self.ignored_columns = ["email"]
end
