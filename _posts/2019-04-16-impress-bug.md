---
layout: Post
title: 'Libre Office Impress bug no modo de apresentação'
tags: ['passo a passo']
excerpt: 'correção de erro'
language: pt-BR
private: False
copyright: <!--Copyright (c) 2019 Carlos Rafael Fernandes Picanço.-->
---

Se o seu computador possui um monitor com resulução super wide (no meu caso 2560x1080),
o Libre Office impress (no meu caso 6.2 e 6.1) pode não mostrar nada ou distorcer sua apresentação.
Eu resolvi o problema seguindo o passo a passo deste link:

https://ask.libreoffice.org/en/question/147505/impress-fails-to-display-anything-in-presentation-mode/

**Passo a passo**

- Abra o Libre Office Impress
- Ferramentas
- Opções
- LibreOffice
- Exibir e na Saída de Vídeo marque **apenas** as opções `Usar suavização` e `Usar OpenGL para toda renderização`
