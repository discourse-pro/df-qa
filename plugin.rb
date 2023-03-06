# name: df-qa
# about: A plugin for question / answer websites.
# version: 0.0.1
# authors: Dmitrii Fediuk
# url: https://www.upwork.com/fl/mage2pro
after_initialize do
  # 2023-03-06 "Allow posts without body": https://github.com/tr-guide/site/issues/1
	require 'post_validator'
	PostValidator.class_eval do
    def raw_quality(post)
    end
	end
end