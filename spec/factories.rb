Factory.define :user do |f|
  f.email "user@leadsleader.ru"
  f.password "password"
  f.password_confirmation "password"
  f.role_id 2
end

Factory.define :webmaster, :parent => :user do |f|
  f.email "test_webmaster@leadsleader.ru"
  f.role_id 2
  f.confirmed_at Time.now
end

Factory.define :advertiser, :parent => :webmaster do |f|
  f.email "test_advertiser@leadsleader.ru"
  f.role_id 3
end

Factory.define :admin, :parent => :webmaster do |f|
  f.email "test_advertiser@leadsleader.ru"
  f.role_id 1
end
