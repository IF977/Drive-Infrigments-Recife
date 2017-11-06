require 'rails_helper'

describe Team do

	caracteres_permitidos = /[a-zA-Z0-9]/
	
	contato_instance = Team.new

	it 'is a instance of Contato?' do
		expect(contato_instance).to be_an_instance_of(Contato)
	end
	
	it 'has an valid body?' do
		expect(contato_instance.body).not_to be_empty
		expect(contato_instance.body).to match (caracteres_permitidos)
	end
end