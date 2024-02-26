class MainUserController < ApplicationController

	def main_user_login
		login = doc["params"]["login"]
    	password = doc["params"]["password"]
	end
end