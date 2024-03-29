---
title: Olá mundo. 
excerpt: exemplo da escrita em markdown
tags: ['web design', 'markdown']
language: pt-BR
en: /2015/05/31/hello-world-markdown-example.html
image: hello.jpg
copyright: <!--Copyright (c) 2015-2016 Carlos Rafael Fernandes Picanço.-->
---


A escrita dos artigos nesse blog estão usando GitHub Flavored Markdown e o Emoji.

:smile:

___
___


**Cabeçalhos**


    # Cabeçalho 1

    ## Cabeçalho 2

    ### Cabeçalho 3

    #### Cabeçalho 4

    ##### Cabeçalho 5

    ###### Cabeçalho 6

# Cabeçalho 1

## Cabeçalho 2

### Cabeçalho 3

#### Cabeçalho 4

##### Cabeçalho 5

###### Cabeçalho 6

___
___


**Negrito** *Itálico*


    **Negrito** *Itálico*


___
___


**Listas**


    - 1
       - 1.1
         - 1.1.1
           - 1.1.1.1
    - Item 2
    - Item 3
    - Item 4

    1. a
    1. b
    1. c

- 1
   - 1.1
     - 1.1.1
       - 1.1.1.1
- Item 2
- Item 3
- Item 4

1. a
1. b
1. c

___
___



**Bloco de referências**


    > blockquote


> blockquote


___
___


**Destaque de código cercado**


<pre><code class="python">
    # python
    def some_method(var='exemple'):
       if var:
          pass
       else:
          result
</code></pre>
    

<pre><code class="pascal">
    // pascal
    procedure some_procedure( Value : string = 'text');
    begin
       ShowMessage(text);
    end;
</code></pre>


<pre><code class="nohighlight">
    # python
    def some_method(var='exemple'):
       if var:
          pass
       else:
          result



    // pascal
    procedure some_procedure( Value : string = 'text');
    begin
       ShowMessage(text);
    end;
</code></pre>
___
___

**Destacar na mesma linha**


    Isto está `destacado`. 


Isto está `destacado`. 

___
___


**Tabelas**


    | Table | Table |
    | ----- | ----- |
    | cell  | cell  |


| Table | Table |
| ----- | ----- |
| cell  | cell  |


___
___


**Links**


    [www.google.com](www.google.com)


[www.google.com](https://www.google.com)


Html está sendo usado para images responsivas (respondem ao tamanho da tela redimensionando-se automaticamente):


    <p><img class="img-responsive center-block" src="/media/blog/in-flagellis-clean.png" alt="Image" /></p>

<p><img class="img-responsive center-block" src="/media/blog/in-flagellis-clean.png" alt="Image" /></p>

Você pode usar algo como `![alt](link)` para *linkar* imagens (não responsivas) também.

___
___


**Linha separadora**


    ___
    ___

___
___


**Liquid e Front Matter**

{% assign b = 5 %}


    {{ "{% assign b = 5 " }}%}
    {{ "{{ site.url " }}}}
    {{ "{{ b " }}}}

{{ site.url }}
{{ b }}