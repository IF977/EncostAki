class Area < ApplicationRecord
    after_save :write_json

    def write_json
        dados_json = []
        Area.all.each do |area|
            dado_json = {
            "latitude" => area.latitude,
            "longitude" => area.longitude
            } 
        dados_json << dado_json
    
        end
        File.open("public/dados.json","w") do |f|
          f.write(dados_json.to_json)
        end
    end

end
