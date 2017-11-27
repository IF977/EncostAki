class Area 
    attr_accessor :regional, :endereco, :bairro, :localidade, :descricao, :latitude, :longitude
    def initialize
        @regional = "Zona sul do Recife"
        @endereco = "Rua alguma coisa"
        @bairro = "Zona sul"
        @localidade = "Recife"
        @descricao = "Area de risco nivel 2"
        @latitude = "-8.92112"
        @longitude = "-8.62112"
    end
end