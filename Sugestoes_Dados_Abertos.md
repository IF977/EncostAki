<img src="https://image.ibb.co/d5CEyR/logofinal_png.png"/>

# Pontos críticos, problemas e sugestões

> Nesse documento falaremos dos problemas que enfrentamos ao utilizar os dados fornecidos pela Prefeitura do Recife no site de dados abertos (http://dados.recife.pe.gov.br), pontos críticos e sugestões para que possam melhorar a forma como disponibilizam esses dados para a população. 
> Para esse projeto utilizamos os dados de Áreas de Risco (Defesa Civil) e Chamados (SEDEC) disponibilizados em um arquivo CSV.

|Pontos críticos:| 
| ------ | 
|Informações desatualizadas;|
|Muito lixo nos dados, por exemplo, dados de testes;|
|Informações sem consistência, por exemplo, latitude e longitude incorreta.|

|Problemas:|
| ------ |
|As áreas de riscos não são atualizadas desde o mês de dezembro de 2016 e não contempla a maior parte da cidade, apenas a região sul, mesmo a capital possuindo 65% do seu território em encostas ou ladeiras;|
|Os dados de chamados estão sem consistência, possuindo dados que não são reais, pois todo os chamados de testes estão no arquivo e que acabam gerando esses dados "falsos";|
|Verificamos também inconsistências nas latitudes e longitudes com o uso da API do Google Maps, gerando alteração na localização de locais, por exemplo, Santo Amaro-Recife acabava aparecendo como Santo Amaro em São Paulo;|
|O dicionário de dados que está disponibilizado no site com as informações do que tem em cada arquivo e os tipos de cada campo não estão corretos, gerando problemas na criação da tabela que irá receber os dados quando o arquivo é importado;| 
|O formato em JSON aparece como uma possibilidade de dicionário de dados para áreas de risco mas não está realmente disponível, a página não é encontrada.|

|Melhorias:|
| ------ |
|Não incluir no arquivo disponibilizado dados de teste;|
|Checar periodicamente se algum arquivo deixou de ser compartilhado ou se as informações estão consistentes, para evitar problemas como o dicionário de dados incorreto;|
|Mapear o restante das áreas de risco e atualizá-los periodicamente também, assim como fazem com o de chamados.|
