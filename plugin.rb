# name: df-qa
# about: A plugin for question / answer websites.
# version: 0.0.2
# authors: Dmitrii Fediuk
# url: https://upwork.com/fl/mage2pro
after_initialize do
	# 2023-03-06 "Allow posts without body": https://github.com/tr-guide/site/issues/1
	require 'post_validator'
	PostValidator.class_eval do
		def raw_quality(post)
		end
		# 2024-06-01
		# 1) "Allow posts without body": https://github.com/tr-guide/site/issues/1
		# 2) «Body can't be blank»: https://github.com/discourse-pro/df-qa/issues/3
		def stripped_length(post)
		end
	end
end