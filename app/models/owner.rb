class Owner < User
  has_one : Store
  has_many : Checkins
end