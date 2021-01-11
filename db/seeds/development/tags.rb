names = %w(緊急 苦情 請求書 法人)

tags = names.map{ |name| Tag.create!(value: name) }

tag_for_test = Tag.create!(value: "TEST")

Message.all.each do |m|
  tags.sample(rand(3)).each do |tag|
    MessageTagLink.create!(message: m, tag: tag)
  end

  MessageTagLink.create!(message: m, tag: tag_for_test)
end

