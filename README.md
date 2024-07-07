# Como executar o ambiente

1. **Primeiro precisa ter o Docker instalado no seu computador**

2. **Para fazer download dos datasets da plataforma Kaggle:**
    1. Acesse: [Kaggle Datasets](https://www.kaggle.com/datasets)
    2. Faça login na sua conta Kaggle.
    3. Clique na sua foto de perfil no canto superior direito e selecione "My Account".
    4. Role para baixo até a seção "API" e clique no botão "Create New API Token". Isso fará o download de um arquivo chamado `kaggle.json`.
    5. Coloque o arquivo `kaggle.json` dentro deste repositório em `.kaggle/kaggle.json`.
    6. Certifique-se de que o arquivo `kaggle.json` tenha as permissões corretas para que apenas o seu usuário possa lê-lo (apenas para Linux/macOS):
        ```bash
        chmod 600 ~/.kaggle/kaggle.json
        ```

3. **Limpar containers anteriores:**
    ```bash
    docker-compose down -v
    ```

4. **Subir container:**
    ```bash
    docker-compose up --build
    ```

5. **Acessar o Jupyter:**
    - Abra o link gerado no terminal, similar a:
    - http://127.0.0.1:8888/tree?token=ef0cef213a449074dcfbf8a24a12d700337caa3a004014c1
    - Lembre de substituir o valor do token gerado
    - Desta forma você ja poderá usar o ambiente Jupyter pelo navegador pelo link
    - http://127.0.0.1:8888/lab

6. **Abrir Jupyter com VS Code:**
    - Caso deseje usar o ambiente Jupyter pelo VS Code, faça:
    - Após executar o container com o ambiente Jupyter
    - abra o VS Code em um arquivo de extensão .ipynb e tente executar alguma celula
    - VS Code irá abrir um menu para escolher o kernel 
    - "Selecione kernel" > "Servidor Jupyter existente..." > "127.0.0.1" > "aperte o incone de atualizar" > "Inserir sua senha"
    - Para inserir sua senha informe o valor token gerado
    - Token é a senha fornecida no terminal. Algo parecido com "ef0cef213a449074dcfbf8a24a12d700337caa3a004014c1"
    - Agora já pode executar seus arquivos .py e .ipynb

7. **Dependencias:**
    - coloque dependencias de bibliotecas python no arquivo requirements.txt
    - para instalar outros programas dentro do container, coloque no arquivo Dockerfile
# ambiente_docker_com_jupyter
