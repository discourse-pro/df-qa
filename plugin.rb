# name: df-qa
# about: A plugin for question / answer websites.
# version: 0.0.2
# authors: Dmitrii Fediuk
# url: https://upwork.com/fl/mage2pro
after_initialize do
	# 2023-03-06 "Allow posts without body": https://github.com/tr-guide/site/issues/1
	# 2024-08-26
	# 1) «LoadError: cannot load such file -- post_validator»: https://github.com/discourse-pro/df-qa/issues/4
	# 2) The previous code was:
	#		require 'post_validator'
	# https://github.com/discourse-pro/df-qa/blob/2024-06-01/plugin.rb#L8
	# 3) Another working solution:
	# 		load File.expand_path(Rails.root + 'lib/validators/post_validator.rb')
	# https://github.com/discourse-pro/df-core-private/blob/2024-08-26/plugin.rb#L21
	require_dependency 'post_validator'
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