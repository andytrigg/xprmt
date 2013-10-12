require 'grape'

module Xprmt
	class API < Grape:API
		content_type :json, 'application/json'
		content_type :xml, 'text/xml'
		default_format :json

		mount API:IndexApi
	end
end