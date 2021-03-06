---
layout: Post
title: 'Como usar o Hostgator como servidor SSH remoto com o Git'
tags: ['web design', 'passo a passo']
excerpt: 'git push hostgator'
language: pt-BR
private: False
copyright: <!--Copyright (c) 2019 Carlos Rafael Fernandes Picanço.-->
---

Eu uso o git para tudo relacionado ao controle de versões.
Este passo a passo é uma tradução livre (com algumas adições) de um post maravilhoso de [Justin Lee](https://justinlee.sg/2017/12/using-git-to-update-my-hostgator-website/) sobre o assunto, publicado dia 6 de Dezembro de 2017.
Boa leitura!

___

As vezes atualizar um site estático demora um tempo para você se acostumar.
Você conecta ao site por meio de sftp e vagarosamente atualiza cada um dos arquivos.
Então eu pensei se poderia atualizá-lo de outras formas e foi ai que cheguei no `git`!
E o `git` já vem instalado no hostagator. Uhull!
Aqui você encontra como configurar o git localmente para usar o hostgator como servidor remoto.

## Pré-requisito - Copie sua chave SSH pública

Você deve ter uma chave privada e uma chave pública local devidamente configurada.
Caso você não faça a menor ideia de como fazer isso, consulte a documentação do GitHub sobre o assunto [aqui](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

Copie sua chave pública para área de trasferência.
Por exemplo, se sua chave pública encontra-se no local `~/.ssh/id_rsa.pub`, você pode copiá-la assim:

```bash
clip < ~/.ssh/id_rsa.pub
```

## Passo 1 - Adicione sua chave SSH pública no Hostgator

Usando o cPanel, navegue até à opção `Segurança -> Acesso SSH` e cole sua chave no local correspondente.

## Passo 2 - Faça o login ao seu servidor no Hostgator

Certifique-se que o acesso remoto está habilitado no Hostgator,
pois alguns planos não possuem a opção habilitada por padrão.

Para fazer o login, abra o terminal (Git Bash no Windows) e veja qual a mensagem que você recebe ao tentar acessar o seu servidor remotamente. 
```bash
ssh USUARIO-HOSTGATOR@DOMINIO-HOSTGATOR -p 2222
Enter passphrase for key '~/.ssh/id_rsa':
Shell access is not enabled on your account!
If you need shell access please contact support.
Connection to imaginetc.com.br closed.
```

Caso você receba um erro como esse, entre em contato com o suporte e peça para eles liberarem o acesso remoto pelo shell.

## Passo 3 - Inicialize um repositório Git no seu servidor

Agora mude o diretório para aonde você está hospedando o seu site e inicialize um repositório git.

```bash
cd ~/subdominio.dominio.com.br
git init
```
Nesse caso, estou usando um diretório hipotético `~/subdominio.dominio.com.br`, portanto mude-o em conformidade com o seu.

## Passo 4 - Configure o repositório para aceitar pushes no diretório

```bash
git config --add receive.denyCurrentBranch ignore
```

## Passo 5 - Configure o repositório para fazer o checkout automaticamente

Quando o repositório recebe um comando push feito por você de uma máquina local, o repositório deve fazer o checkout. 

Para isso salve o seguinte comando:

```bash
GIT_WORK_TREE=../ git checkout -f
```

No seguinte arquivo:

```txt
CAMINHO_COMPLETO/subdominio.dominio.com.br/.git/hooks/post-receive
```

E torne-o um executável:

```bash
chmod +x CAMINHO_COMPLETO/subdominio.dominio.com.br/.git/hooks/post-receive
```

## Passo 6 - Configure as credenciais de seu git remoto

Configure o email e nome de usuário:
```bash
git config --global user.email "seu.nome@email.com"
git config --global user.name "Seu Nome"
```
## Passo 7 - Alimente o seu repositório remoto

Faça `add` e `commit` de algo no seu repositório:
```bash
git add --all
git commit -m "first commit inside my hostgator server"
```
## Passo 8 - Deslogue do servidor

Execute:
```bash
exit
```

## Passo 9 - Configure o seu repositório local

Após deslogar do servidor, você pode clonar o seu repositório assim:
```bash
git clone ssh://USUARIO-HOSTGATOR@DOMINIO-HOSTGATOR:2222/CAMINHO-COMPLETO/subdominio.dominio.com.br
```

Você pode adicionar `hostgator` como um apelido para o seu novo repositório ssh:
```bash
cd ~/subdominio.dominio.com.br
git remote add hostgator ssh://USUARIO-HOSTGATOR@DOMINIO-HOSTGATOR:2222/CAMINHO-COMPLETO/subdominio.dominio.com.br
```

Agora você pode enviar e receber diretamente para o seu servidor no hostgator! 

```bash
git push hostgator
git pull hostgator
```

Tudo estará no ar rapidamente, pois o git é super rápido!
