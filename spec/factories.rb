FactoryGirl.define do
  factory :user do
    name 'Test User'
    email 'example@example.com'
    password 'please'
    password_confirmation 'please'
    # required if the Devise Confirmable module is used
    confirmed_at Time.now
  end

  factory :anime do
    title 'Test Anime'
    description 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vehicula enim vitae sapien mattis auctor. Ut luctus eleifend est eget elementum. Suspendisse non erat non justo ultricies accumsan. Nunc et libero enim. Mauris sit amet est in turpis porttitor pharetra. Curabitur consequat arcu nec dolor hendrerit sagittis. Cras venenatis semper auctor. Proin sed mauris id massa sodales gravida. Nunc dictum arcu at eros egestas porttitor. Ut at mauris metus, sed laoreet nisi. Maecenas ac varius dui. Vestibulum id ante justo. Aliquam viverra leo in nisl facilisis et ullamcorper ipsum pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer sed libero nibh, vitae consectetur tortor. Aenean varius ultrices nisl in tristique.'
    image_url 'http://www.gogoanime.com/images/3x3-eyes.jpg'
  end

  factory :episode do
    title 'Test Episode 1'
    embed_url '<embed src="http://videobb.com/e/pMU0KiH1CMqF" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="600" height="599"></embed>'
  end

  factory :comment do
    comment_body "Testing Comment"
  end

  factory :anime_with_episode, :parent => :anime do |anime|
    anime.after_create { |a| Factory(:episode, :anime => a) }
  end

  factory :episode_with_comment, :parent => :episode do |episode|
    episode.after_create { |e| Factory(:comment, :episode => e) }
  end

end
