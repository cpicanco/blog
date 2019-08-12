---
layout: Post
title: 'Instalar módulo python em um local customizado com pip'
tags: ['programação']
excerpt: 'python-pip'
language: pt-BR
private: False
copyright: <!--Copyright (c) 2019 Carlos Rafael Fernandes Picanço.-->
---

Nem sempre o local de instalação padrão está disponível, por exemplo, nos servidores compartilhados do hostgator. Para resolver isso, basta instalar em outra pasta. Para fazer isso com o `pip`:

```
pip install --target=/home/my_python_script/python_modules/ Jinja2
```

Antes de usar um módulo, será necessário incluir a pasta de módulos `python_modules` na lista de caminhos do python:

```
import os, sys
sys.path.append(os.path.join(os.path.dirname(__file__),'python_modules'))
```
