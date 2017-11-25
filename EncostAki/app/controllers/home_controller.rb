require 'json'
class HomeController < ApplicationController
  def index
      dados_json = Hash.new {|h,k| h["points"]=[]}
      c = 1
      Area.all.each do |area|
          dado_json = {
          "id" => c,
          "endereco" => area.endereco,
          "descricao" => area.descricao,
          "latitude" => area.latitude,
          "longitude" => area.longitude
          
            } 
          dados_json["points"] << dado_json
          c += 1
    
      end
      File.open("public/dados.json","w") do |f|
          f.write(JSON.pretty_generate(dados_json))
      end
  end
end
