FROM ubuntu:latest 

# Especifica que a porta 8000 do contêiner estará disponível para comunicação com o ambiente externo.
# No entanto, esse comando apenas documenta a intenção de expor essa porta, e não a expõe automaticamente.
EXPOSE 8000  

WORKDIR /app

# Criando variáveis de ambiente
# Conexão com o Banco de dados
ENV HOST=localhost PORT=5432
# Login no banco de dados
ENV USER=root PASSEORD=root DBNAME=root 



# Este comando copia o arquivo chamado "main" do diretório local (onde o Dockerfile está localizado) para o diretório "/app" dentro do contêiner
# O primeiro argumento é o caminho do arquivo no sistema de arquivos local e o segundo argumento é o caminho de destino dentro do contêiner.
COPY ./main.go main


# Este comando especifica o comando que será executado quando o contêiner for iniciado. 
# Neste caso, ele executa o arquivo "main" dentro do diretório "/app". 
# A forma como o comando é definido, usando uma lista entre colchetes, 
# é uma convenção do Docker para garantir que o comando seja tratado corretamente pelo shell do contêiner.
CMD ["./main"]