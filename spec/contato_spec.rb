require 'rails_helper'
require 'contato'

describe Contato do

	caracteres_permitidos = /[a-zA-Z0-9]/
	email_valido = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	
	contato_instance = Contatos.new

	it 'is a instance of Contato?' do
		expect(contato_instance).to be_an_instance_of(Contato)
	end
	
	it 'has an valid body?' do
		expect(contato_instance.body).not_to be_empty
		expect(contato_instance.body).to match (caracteres_permitidos)
	end
	
	it 'has an valid user_email?' do
		expect(contato_instance.contato_Email).not_to be_empty
        expect(contato_instance.contato_Email).to match (email_valido)
	end
	
	it 'has an valid Subject?' do
	    expect(contato_instance.contato_Subject).not_to be_empty
	    expect(contato_instance.contato_Subject).to match (caracteres_permitidos)
	end
	
	it 'has an valid Message' do
	    expect(contato_instance.contato_Message).not_to be_empty
	    expect(contato_instance.contato_Mensage).to match (caracteres_permitido) 
	end
end