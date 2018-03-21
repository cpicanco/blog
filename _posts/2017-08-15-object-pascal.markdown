---
layout: Post
title: 'Object Pascal e Análise do Comportamento'
tags: ['ciência', 'programação']
excerpt: 'Introdução ao desenvolvimento de interfaces gráficas com Lazarus e Free Pascal'
language: pt-BR
private: False
copyright: <!--Copyright (c) 2018 Carlos Rafael Fernandes Picanço.-->
---
## Como citar esse trabalho?

O presente trabalho é uma versão de um capítulo da obra "Introdução ao desenvolvimento de softwares para analistas do comportamento", E-book gratuito, download completo disponível em: [httpp://abpmc.org.br/publicacoes.php?inf=14](httpp://abpmc.org.br/publicacoes.php?inf=14)

Cite a versão do livro assim:

> Picanço, C. R. F. (2018). Introdução ao desenvolvimento de interfaces gráficas com Lazarus e Free Pascal. Em H. B. Neves Filho, L. A. B. Freitas & N. C. C. Quinta (Orgs.). Introdução ao desenvolvimento de softwares para analistas do comportamento (pp. 33-88). Campinas: ABPMC.

Cite esta versão assim:

> Picanço, C. R. F. (21 de março de 2018). Introdução ao desenvolvimento de interfaces gráficas com Lazarus e Free Pascal.[Blog]. Recuperado de: http://blog.rafael.picanco.nom.br/2017/08/15/object-pascal.html

Versões anteriores disponíveis no repositório: https://github.com/cpicanco/blog/

## O objetivo deste capítulo é:

- Informar o leitor ou leitora sobre a existência de diferentes dialetos derivados do Pascal.
- Situar o leitor ou leitora sobre o dialeto utilizado neste guia.
- Apresentar um recorte da comunidade de desenvolvedores Pascal.
- Apresentar um recorte básico do dialeto Free Pascal.
- Introduzir aspectos básicos do ambiente de programação Lazarus e Free Pascal.
- Introduzir o desenvolvimento de aplicações visuais nesse ambiente por meio de exemplos.

Os exemplos foram pensados para uma audiência de analistas do comportamento, especialmente aqueles lidando com participantes de pesquisa que devem interagir com uma interface gráfica. Por meio desses exemplos, a leitora ou leitor será guiado à resolução de problemas recorrentes:

- Como apresentar estímulos (antecedentes e consequentes)?
- Como esperar por respostas?
- Como rastrear e registrar tempo e frequência de estímulos e respostas?

## Pré-requisitos

- Inglês: leitura e escrita instrumental.
- Conhecimento básico de informática: usar teclado e mouse.
- Conhecimento básico sobre o sistema operacional de escolha: como executar um programa?
- Conhecimento básico sobre interfaces gráficas comuns, por exemplo, busca por controles visuais: o que são janelas, o que é um menu superior, etc.

## Pascal - Breve histórico

A linguagem de programação Pascal, como originalmente arquitetada pelo professor Niklaus Wirth (1934-) entre 1968 e 1971 (Jensen & Wirth, 1973) tinha como objetivo servir ao ensino introdutório de programação estruturada em suas aulas. Assim inicia a entrevista de Severance (2012) ao professor Wirth. Embora Wirth também tenha ajudado a montar o sistema em grandes computadores de outras universidades naquele período, ele relata que a popularização de dialetos originados do Pascal só viria na década de 80 com o advento do microcomputador, de sistemas integrados de desenvolvimento e da redução de custo dos compiladores.

Quando comparado com linguagens como BASIC, Assembly, ALGOL e FORTRAN, o Pascal de Wirth possuía um melhor balanço entre legibilidade, modularidade e flexibilidade. Severance (2012), considera que a linguagem, por ser estruturada, era muito mais adequada para a construção de programas com qualidade de produção. Ainda assim, dando continuidade à entrevista, Wirth foi reconhecendo demandas não contempladas pelo Pascal, o que o levou a estendê-lo e reformulá-lo, criando outros dialetos derivados daquele original.

Mas aquela popularização ocorreria por meio de ainda outros dialetos, independentes, com suas próprias extensões e melhorias, alguns inclusive tendo sido adotados como padrão em cursos de introdução à programação. Como consequência, algumas gerações naquele período (70-80) aprenderam a pensar computacionalmente por meio de um dialeto do Pascal, derivado ou original. É razoável considerar, portanto, que algumas gerações entraram no mercado de trabalho tendo um ou outro como primeira linguagem de programação.

## Pascal - Padronização e Diversificação comercial

Não por acaso, com tal mão de obra disponível, bases de código milionárias foram escritas em dialetos do Pascal; por exemplo, como os primeiros sistemas operacionais da Apple Computers Inc. (1985). Por conta do crescente uso comercial de dialetos derivados do Pascal, o dialeto original foi padronizado (ISO 7185:1983), revisado (ISO 7185:1990) e expandido (ISO 10206:1990) com o objetivo de corrigir ambiguidades e assegurar a sua portabilidade. Atualmente, compiladores como o GNU Pascal (versão 3.4.x) e o Free Pascal (versão 3.x.x) oferecem, em algum nível, suporte a essas padronizações.

Uma linguagem sem ambiguidades e portável permite que um programa, uma vez escrito, seja traduzido para a linguagem da máquina alvo independente do compilador utilizado. A despeito dos esforços, e embora sejam desejáveis de um ponto de vista técnico e prático, tais padronizações não figuram entre os dialetos mais populares derivados do Pascal. Outros dialetos (como o Delphi Pascal, Apple Pascal e Free Pascal) tornaram-se os “padrões de fato” no mercado.

## Object Pascal - Um dialeto extendido

Ao longo das décadas de 70 e 80 houve uma popularização da chamada “programação orientada a objetos”. Surgia a necessidade de se estender a sintaxe do Pascal estruturado tornando-o mais permissivo ao novo estilo; originava-se, então, o Object Pascal. A orientação ao objeto tornava-se um modelo de referência para o planejamento e a programação de interfaces gráficas. Foi nesse contexto que interfaces de desenvolvimento integrado como o Turbo Pascal (Borland International Inc, 1984/1983 e sucessores, como o Delphi) e o Lazarus (lançado em 2001, ver [https://en.wikipedia.org/wiki/Lazarus_(IDE)](https://en.wikipedia.org/wiki/Lazarus_%28IDE%29)) surgiram.

## Free Pascal e Lazarus - um ambiente de desenvolvimento integrado

Os exemplos neste guia foram escritos por meio do ambiente integrado de desenvolvimento Lazarus (Lazarus IDE, 2018) e do compilador Free Pascal (Klämpfl et al, 2018). O ambiente contém recursos que reduzem a barreira de entrada na complexa cadeia que é o desenvolvimento de aplicações compiladas. Um compilador é um programa que traduz a sintaxe de alto nível (mais portável), para uma linguagem de baixo nível (específica de uma máquina alvo). O produto final é um arquivo nativamente executável e que não demanda instalação.

Compilador (Free Pascal) e interface (Lazarus) são distribuídos por meio de licenças livres (GPL), de autoria da *Free Software Foundation*. Diferentemente de licenças privadas, licenças livres não podem ser revogadas. Parte do ambiente também é licenciado (LGPL) de maneira a permitir a distribuição de aplicações comerciais com código fonte privado. Porque tanto aplicações privadas (dentro de certos limites) quanto abertas e livres são permitidas, o ecossistema tende a ter longevidade, fertilidade e diversificação suficientes que tornam uma ampla gama de projetos de engenharia de programas de computador empreendimentos viáveis.

O ambiente está disponível para sistemas operacionais como o OSX, Windows e baseados no *kernel* Linux (Debian, Ubuntu) e agrega uma grande comunidade de desenvolvedores independentes. Os principais meios de informação e comunicação nesse ecossistema são:

- [A wiki](http://wiki.freepascal.org/): http://wiki.freepascal.org/
- [O fórum](http://forum.lazarus.freepascal.org/): http://forum.lazarus.freepascal.org/
- As listas de emails: 
  - [Lazarus](http://lists.lazarus.freepascal.org/mailman/listinfo/lazarus):http://lists.lazarus.freepascal.org/mailman/listinfo/lazarus
  - [Free Pascal](https://www.freepascal.org/maillist.var):https://www.freepascal.org/maillist.var
- Os sites oficiais:
  - [Pacotes](http://packages.lazarus-ide.org/): http://packages.lazarus-ide.org/
  - [Fundação](https://foundation.freepascal.org/): https://foundation.freepascal.org/
  - [Lazarus](http://lazarus-ide.org/): http://lazarus-ide.org/
  - [Free Pascal](https://www.freepascal.org/): https://www.freepascal.org/
- [O rastreador de bugs](http://bugs.freepascal.org/): http://bugs.freepascal.org/

Diversas coleções de unidades, componentes e pacotes reunidos nas chamadas “bibliotecas” já vem pré-instalados. Eles permitem a execução de tarefas gerais de programação:

- Free Pascal Runtime Library (RTL).
- Free Pascal Component Library (FCL).
- Lazarus Component Library (LCL).

Outras coleções de terceiros também frequentemente utilizadas estão reunidas por meio do pacote “Gerenciador Online de Pacotes”. O pacote é distribuído juntamente com o Lazarus e pode ser instalado por meio do menu “Pacotes”, opção “Instalar pacotes”, item “OnlinePackageManager” na lista à direita.

Ao explorar o ecossistema por meio de buscadores online, seja em busca de ajuda, seja em busca de contribuições de terceiros, utilize palavras-chave como “free pascal”, “lazarus forum”, “component”, “package”, juntamente com os termos específicos de seu interesse.

## Free Pascal e Lazarus - Instalação e configuração do ambiente de desenvolvimento.

Baixe os arquivos de instalação correspondentes para o seu sistema no sítio de hospedagem oficial ([https://www.lazarus-ide.org](https://www.lazarus-ide.org)). Em seguida execute o instalador (ou instaladores, se Linux e OSX). Caso seja solicitado, forneça os privilégios de administrador do sistema operacional ao instalador. O processo de instalação e configuração mínima é automático.

Este guia fará referência aos nomes dos controles da interface Lazarus tal como traduzidos para o português brasileiro, portanto recomenda-se a escolha deste idioma ao longo da instalação. Opcionalmente, após a instalação, altere o idioma no menu superior Ferramentas->Opções da IDE->Ambiente->Geral->Idioma. Opcionalmente você também pode trocar os esquemas de cores das janelas. Diversos esquemas de cores para as janelas estão disponíveis. Para mais informações, consulte o endereço:   
[http://wiki.lazarus.freepascal.org/UserSuppliedSchemeSettings](http://wiki.lazarus.freepascal.org/UserSuppliedSchemeSettings)

## Lazarus - criando e executando uma aplicação

Ao executar o Lazarus pela primeira vez (por meio do comando “startlazarus” em sistemas Linux), uma aplicação (programa com uma interface gráfica) é criada automaticamente. Execute a aplicação pressionando F9 (Executar). Essa aplicação padrão é uma janela flutuante (ou formulário) com funcionalidades básicas como fechar, minimizar, maximizar, restaurar, mover, redimensionar, entre outras. Essa janela (ver Figura 1, janela 4) também já vem preparada para receber eventos como aqueles produzidos por mouse e teclado.

<p>
<img class="img-fluid center-block"
       src="/media/blog/laz_fpc_ac_intro/Figure1.jpg"
       alt="Janelas Utilizadas neste guia." />
</p>

Figura 1. Janelas utilizadas neste guia. Legenda: (1) menu superior do Lazarus; (2) inspetor de objetos; (3) editor de código; (4) janela principal da aplicação; (5) mensagens; (6)console.

Para a execução do código na seção de sintaxe (adiante) recomenda-se criar um programa mais simples para cada elemento sintático de seu interesse. Para criar um programa mínimo, clique em “Projetos”, “Novo Projeto”, “Programa Simples”.

## Lazarus - encerrando uma aplicação

Ao executar seu programa por meio da interface de desenvolvimento, existem ao menos duas maneiras de se encerrar uma aplicação: normalmente ou forçadamente. Para fechar a aplicação normalmente, utilize o comando correspondente na barra superior da janela (no Windows, por exemplo, clique no xis no canto superior direito). Para forçar o fechamento, selecione uma janela do Lazarus, por exemplo clicando sobre a janela “Editor de Código” (Figura 1, janela 3), e pressione CRTL+F2 (ou clique no botão “Parar” do menu superior da janela principal do Lazarus). O primeiro método permite avaliar a ocorrência de erros na cadeia de eventos de encerramento da aplicação. O segundo não produz a cadeia normal de eventos de encerramento e permite a interrupção da aplicação (travada), especialmente quando erros lógicos produzem espera infinita.

## Lazarus - salvando o projeto de uma aplicação

Após fechar a aplicação, pressione CRTL+S e salve o projeto. Recomenda-se sempre renomear os nomes padrões para nomes que resumem a função do arquivo. O código fonte da aplicação padrão é composto por três arquivos principais. Dois arquivos (unit1.pas e unit1.lfm) compõe um “formulário” ou “janela” e o outro arquivo (project1.lpr) compõe um “projeto” ou “programa”. Adicionalmente, um arquivo de configuração do projeto (project1.lpi) e arquivos de recursos auxiliares também serão automaticamente criados ao salvar. Neste guia, apenas o arquivo “unit1.pas” será editado diretamente por você. Ao salvar, renomeie esse arquivo para “Forms.Main.pas”. Em seguida o programa permitirá que você renomeie o arquivo de configuração do projeto. Renomeie para “ProjetoPiloto.lpi”. Como muitos arquivos estão envolvidos, recomenda-se reservar uma pasta para cada projeto.

## Lazarus - depurando uma aplicação

Um depurador (debugger) é um programa que auxilia na detecção e correção de erros no seu programa. Ao executar a aplicação padrão por meio do Lazarus (pressionando F9, por exemplo) informações que permitem melhor depuração são adicionadas automaticamente ao executável. O depurador padrão utilizado é o GNU Debugger (GDB). Uma descrição detalhada de estratégias de depuração está fora do escopo do presente guia. Entretanto, recomenda-se explorar duas delas: (a) Observação em tempo real do conteúdo de variáveis por meio do menu Exibir->Janelas de depuração->Observadores e (b) Adição de ponto de parada (Break Point) em linhas de código permite execução linha a linha por meio dos controles “Passar dentro” (F7) e “Passar sobre” (F8).

Para os objetivos deste guia, uma estratégia mais básica de depuração será adotada na seções seguintes por meio da janela “Console” (Figura 1, janela 6). Para exibi-la, pressione CRTL+ALT+O. Ao executar uma aplicação por meio do Lazarus, essa janela é a saída padrão do texto escrito por meio do **WriteLn**, um construto básico da linguagem apresentado nas seções seguintes. Escrever texto no console é uma estratégia simples e eficiente de apresentar informações sobre o programa e saber se ele realmente está fazendo o que deveria estar fazendo.

## Free Pascal - Sintaxe básica

As seções seguintes foram planejadas como um recurso de **consulta** e para permitir a **leitura corrida**. Não tente decorar nada! Ao consultar, você deve executar, testar e explorar cada elemento sintático de seu interesse copiando e colando no editor de código. Lembre-se, é muito importante que você crie um programa simples para cada elemento sintático de seu interesse. Dessa forma você estará se organizando e criando condições para recorrer aos seus próprios programas de teste quando precisar lembrar de algo. Veja os passos para criar um programa simples na seção “criando e executando uma aplicação” acima.

### Comentários

Textos comentados são ignorados pelo compilador e permitem a documentação do funcionamento e significado de trechos do código. Comente uma linha inteira usando duas barras no início da linha:

     
      // Esta linha está comentada, pois inicia com duas barras.
     
É possível também inserir um comentário ao final da linha:

      
     // Esta linha está comentada
     Este trecho não está comentado, // mas este está.
     
Comente diversas linhas por meio de chaves:

     
      // Esta linha está comentada
     {
        Este trecho também está comentado,
        pois está entre chaves simples.
     }
     
Comente um pedaço de texto dentro de uma linha por meio de chaves:

      
     // Esta linha está comentada
     Este trecho não, { este sim } este não.
     

### Programa, Blocos, Início, Fim

Um programa pascal é um conjunto de blocos. Ele deve conter no mínimo um bloco de declaração de seu título e um bloco de comandos. O ponto final ao final demarca o final de um programa. Outros comandos, blocos de comandos e declarações dentro de um módulo devem ser finalizados com ponto e vírgula:

    program ProjetoPiloto // declara o identificador ProjetoPiloto
    ;  // finaliza o bloco de declaração do identificador do programa
    begin  // inicia o bloco de comandos central
      WriteLn('Olá Mundo!'); // escreve o texto 'Olá Mundo!' e uma linha no console 
    end. // finaliza o bloco de comandos central e o módulo

A linguagem não diferencia maiúsculas de minúsculas, portanto o seguinte programa é idêntico ao anterior:

    PROGRAM projetopiloto;
    BEGIN                   
      writeln('Olá Mundo!');              
    END.                    

Com exceção dos separadores entre identificadores, a linguagem não é sensível à indentação (recuos, parágrafos, espaçamentos, etc.) por meio de caracteres não imprimíveis como o ‘tab’, ‘espaço’ ou ‘final de linha’. Isso significa que o seguinte programa também é idêntico ao anterior:

    program projetopiloto;begin WriteLn('Olá Mundo!');end.

Embora idêntico, diferentes convenções de indentação existem com o objetivo de melhorar a legibilidade do código. A linguagem permite que você crie sua própria convenção, mas recomenda-se o uso de convenções existentes.

O arquivo contendo o identificador “program” é o módulo principal de um programa. Mas um programa frequentemente reuni outros arquivos chamados de “unidades”.

### Unidades

Uma unidade é um módulo que pode ser reutilizado por outros módulos. Cada unidade possui, necessariamente, um bloco público (interface), visível a outros módulos, e um bloco privado (implementação), invisível a outros módulos. Um programador deve ser capaz de usar uma unidade conhecendo apenas a interface dela mantendo-se agnóstico sobre a implementação. Identifique os blocos público e privado da unidade “Unit1” por meio dos comentários a seguir:

    unit Unit1; // inicia a unidade Unit1
     
    interface   // inicia o bloco público da unidade                
     
    uses   // a palavra "uses" inicia um "bloco de uso" e permite usar outras unidade
     Unit2, Unit3;  // as unidades 2 e 3 estão sendo usadas
     
    {  As interfaces das unidades 2 e 3 são visíveis
        em toda a unidade 1 (esta unidade).}
     
    implementation  // final do bloco público e início do bloco privado da unidade
     
    uses Unit4;           
     
    {  Mas a interface da unidade 4 é visível apenas
        na implementação da unidade 1 (esta unidade). }
     
    end.            // final da unidade

A unidade anterior (Unit1) usa três outras unidades (Unit2, Unit3 e Unit4). Se duas unidades diferentes declaram interfaces iguais, a interface da última unidade na lista é usada evitando, portanto, conflitos.

Que tal escrever o dia atual no console reaproveitando as funcionalidades de unidades existentes? A unidade “DateUtils” contém a função “Today” em sua interface. Essa função tem como resultado o dia atual no formato de data (o tipo “TDateTime”). Mas esse formato não é legível, então será necessário convertê-lo para um formato de texto legível. Para isso, a unidade “SysUtils” contém a função “DateTimeToStr” em sua interface. Essa função converte uma data para texto:

    program ProjetoPiloto;
    uses DateUtils, SysUtils;
    begin
      WriteLn(DateTimeToStr(Today));
    end.

Os aspectos sintáticos de uma “função” serão descritos mais adiante. Neste momento, apenas note o seguinte: A função “Today” está entre os parênteses da função “DateTimeToStr” que, por sua vez, está entre os parênteses do constructo “WriteLn”. Você pode ler essa linha dessa forma: “Today” retornará um resultado para “DateTimeToStr” que, por sua vez, retornará outro resultado para “WriteLn” que, por fim, escreverá o texto correspondente no console.

### Atribuição, Variáveis, Constantes e Tipos

Uma variável é um identificador associado a um espaço reservado na memória do computador. Em outras palavras, uma variável permite salvar um resultado na memória e recuperá-lo quando for necessário. Toda variável possui um tipo (um formato) e precisa estar declarada em um bloco antes de ser usada. Identifique o bloco de declaração de variáveis por meio dos comentários a seguir:

    var                  // inicia um bloco de declaração de variáveis
      b : boolean = true; // declara ‘b’ como um tipo ‘boleano’ inicializando-o com true
      i : integer = -1;   // declara ‘i’ como um ‘número inteiro inicializando-o com -1
      s : string  = 'Texto'; // declara ‘s’ como um texto inicializando-o com "Texto" 
    begin
      WriteLn(b);            // converte o valor para texto e o mostra no console
      WriteLn(i);            // converte o valor para texto e o mostra no console
      WriteLn(s);            // mostra o texto no console
    end. 

Variáveis podem receber (atribuição de) valores por meio do sinal “:=”. A leitura se dá da direita para a esquerda: “Variável := Valor”. Diferentes valores de um mesmo tipo podem ser atribuídos a uma variável no bloco de comandos. Constantes simples, diferentemente de variáveis, podem ser declaradas, mas não podem receber atribuição de valores.

    const       // inicia um bloco de declaração de constantes
      tab = #9; // declara uma constante com um caractere não imprimível (tab)
    var          
      b : boolean;  // declara ‘b’ como boleano  
      i : integer;  // declara ‘i’ como inteiro
      s : string;   // declara ‘s’ como texto 
    begin
      b := false;   // atribui false à variável ‘b’
      i := 10;      // atribui 10 à variável ‘i’
      s := 'texto'; // atribui "texto" à variável ‘s’
     
      // imprime as variáveis no console usando o tab como separador
      WriteLn(b, tab, i, tab, s); 
     
      // tab := #32; isso não é possível, pois ‘tab’ é uma constante
    end. 

### Operadores

Operadores são símbolos reservados para operações comuns sobre variáveis de tipos conhecidos. Consulte o guia de referência da linguagem para informações detalhadas sobre todos os operadores suportados ([https://www.freepascal.org/docs-html/ref/refse84.html](https://www.freepascal.org/docs-html/ref/refse84.html)):

    var
      b : boolean = false;
      i : integer = 10;
      s : string  = 'texto';
    begin
      // Operações Boleanas
      b := not B;       // inverte o valor de B (para true)
      b := not B;       // inverte o valor de B (para false)
      b := 10 > 9;      // dez é maior do que nove? true
      b := 10 < 9;      // dez é menor do que nove? false
      b := 10 = 9;      // dez é igual à nove? false
      b := 10 <> 9;     // dez é diferente de 9? true
     
      //  cuidado! a comparação entre texto diferencia maiúsculas e minúsculas
      b := s = 'texto'; // os textos são iguais? true
      b := s <> 'Texto';// os textos são diferentes! true
     
      // Operações Aritméticas
      i := -i;          // inverte o sinal de i para negativo
      i := -i;          // inverte o sinal de i para positivo
      i := 10 + 10;     // soma entre dois inteiros
      i := 10 - 1;      // diferença entre dois inteiros
      i := 10 * 10;     // multiplicação entre dois inteiros
      i := 10 div 10;   // divisão entre dois inteiros
      i := 10 mod 3;    // resto da divisão entre dois inteiros
     
      // Operações com texto
      s := 'texto'+'texto'+'texto';     // concatenar texto  
    end.

O que você faria para inspecionar o resultado de cada operação armazenado nas variáveis “i”, “b” e “s”?

### Condições

Você frequentemente precisará que um programa realize operações condicionalmente. Condições podem ser declaradas por meio de dois tipos de estruturas.

#### if … then … else

O primeiro tipo condicional permite testes boleanos, testes que admitem apenas dois resultados (verdadeiro e falso) e, consequentemente, a bifurcação entre dois caminhos:

    var
      i : integer;
    begin 
      {
        Observação:
        True e False são os valores boleanos
        pré-definidos pela linguagem
      }
     
      // neste caso, o uso de um valor pré-definido torna a condição sempre verdadeira
      if True then
        begin 
          i := 1; // então este comando sempre será executado
        end
      else
        begin
          i := 0; // e este nunca será executado
        end;
     
      // neste caso a condição é sempre falsa
      if False then
        begin 
          i := 1; // então este comando nunca será executado
        end
      else
        begin
          i := 0; // e este sempre será executado
        end;
     
      // neste momento, o que será escrito no console?
      if i = 0 then WriteLn(i) else WriteLn('A');
     
      // e agora, o que será escrito no console?
      if i = 0 then WriteLn('A') else WriteLn(i);
    end.

#### “case … of … else …”

O segundo tipo condicional permite testes sobre valores e texto. A bifurcação pode ocorrer entre diversos resultados:

    var
      i : integer = 0;  // inicializa i com o valor 0
      s : string = 'a'; // inicializa s com o texto 'a'
    begin
      // casos sobre valores
      case i of
        0 :           // caso i seja igual a 0
          i := 1; // este comando será executado, pois i é igual a zero
        1 :           // caso i seja igual a 1
          i := 2;     
        2 :           // caso i seja igual a 2
          i := 3;          
      else
      // este comando será executado se nenhum dos casos especificados ocorrer
        i := -1;      
      end;
     
      // casos sobre texto
      case s of
        'a'    : i := 0; // este comando será executado, pois s é igual a 'a'
        'b'    : i := 1; // caso s seja 'b'
        'casa' : i := 2; // caso s seja 'casa'
      else
        i := -1;          
      end;
    end.

### Laços de repetição

Existem três tipos de laços de repetição. Dois deles permitem repetir um bloco de comandos “até que” ou “enquanto” uma condição for verdadeira. O outro permite repetir um bloco de comandos de acordo com um intervalo de valores.

#### repeat … until

Este laço permite testar uma condição de saída após um bloco de comandos, ou seja, permite executar um bloco de comandos no mínimo uma vez e repeti-lo até que uma condição de saída seja verdadeira.

    var
      i : integer;
    begin
      i := 100; 
      repeat            
        i := i + 1;    // executa o bloco de comandos primeiro
      until i < 100;   // testa a condição de saída ao final 
      // portanto i será igual a 101
    end.

#### while … do

Este laço permite testar uma condição de saída antes de um bloco de comandos, ou seja, se a condição for falsa o bloco de comandos não executa nenhuma vez. Ao contrário, se for verdadeira, repetirá enquanto a condição for verdadeira.

    var
      i : integer;
    begin
      // repetir enquanto uma condição for verdadeira:
      i := 100;
      while i < 100 do // a condição de saída é executada primeiro
      begin            // portanto este bloco não será executado
        i := i + 1;  
      end;
     
      i := 100;
      while i = 100 do // condição verdadeira, portanto
        i := i + 1;    // este bloco será executado uma vez
     
      // condições de saída customizadas podem ser criadas
      // com o procedimento de saída de laço "Break" e condições
     
      // o laço a seguir executaria infinitamente 
      // pois True é uma variável do sistema e não muda
      // a única maneira de sair desse laço é por meio
      // do procedimento de saída de laço "Break"
      i := 0;
      while True do 
      begin
        WriteLn(i);       // escreva o valor de i no console
        i := i + 1;       // incremente i
        if i > 4 then     // se i maior do que 4 (condição de saída) então 
          Break;          // saia do laço infinito
      end;
      // WriteLn produzirá "0, 1, 2, 3, 4" no console
     
      // também é possível pular comandos dentro do bloco de repetições
      // por meio do procedimento "Continue"
      i := 0;
      while True do     // execute infinitamente
      begin             // início do bloco de repetições
        if i < 4 then   // se menor do que 4
        begin
          WriteLn(i);   // escreva o valor de i no console                    
          i := i + 1;   // incremente 1
          Continue;     // e continue do início
        end;
                      // se 5 ou maior
        i := i + 1;     // incremente 1
        WriteLn(i);     // escreva o valor de i no console
        Break;          // saia do laço infinito
      end;              // fim
      // WriteLn produzirá "0, 1, 2, 3, 5" no console
      // o número quatro foi pulado 
    end.

#### for … to … do / for … downto … do

Este laço permite repetir de acordo com um intervalo.

    var
      i : integer;
    begin
      for i := 0 to 9 do // do menor para o maior
        begin
          WriteLn(i);  // 0, 1 .. 9
        end;
       
      for i := 9 downto 0 do   // do maior para o menor
        begin
          WriteLn(i); // 9, 8 .. 0
        end;
       
      { Esses laços também permitem o uso dos procedimentos  Break e Continue }    
    end.

#### Vetores e Listas

Laços de repetição geralmente se combinam com vetores e listas. Um vetor (array) é uma série de itens indexados. Cada item possui um índice e um tipo. Por padrão o primeiro item de um vetor possui índice 0. Vetores podem ser estáticos ou dinâmicos. Vetores estáticos possuem um tamanho fixo:

    const
      space = #32;
    var
      // declara e inicializa um vetor estático
      names : array [0..4] of string = ('joao', 'maria', 'rafael', 'thais', 'laura'); 
     
      // declara uma variável de tipo igual ao do vetor
      name : string;
     
      // apenas inteiros podem servir como índice de vetores
      i : integer;
    begin
    // percorra os items de um vetor sem se preocupar com seus índices
      for name in names do
        WriteLn(name);
     
      // percorra os items de qualquer vetor por meio de seus índices
      for i:= Low(names) to High(names) do
        begin
          WriteLn(i, space, names[i]);
        end; 
   end.

Vetores dinâmicos possuem um tamanho variável:

    var
      numbers : array of integer; // declara um vetor dinâmico
      number : integer;
    begin
      SetLength(numbers, 2);  // inicializa um vetor com 2 itens  
     
      // retorna o tamanho de um vetor, neste caso igual a 2
      // Length(numbers);     
     
      // retorna o maior índice de um vetor, neste caso igual a 1
      // High(numbers);       
     
      // retorna o menor índice de um vetor, neste caso igual a 0
      // Low(numbers);        
     
      // atribui um valor ao primeiro item do vetor
      numbers[0] := 100;      
     
      // atribui um valor ao segundo item do vetor
      numbers[1] := 200;      
     
      // expande o vetor, agora ele possui 3 itens
      SetLength(numbers, Length(numbers)+1);  
     
      // atribui um valor ao terceiro item, 
      numbers[2] := 300;
     
      // reduz um vetor, agora ele possui 2 itens
      SetLength(numbers, Length(numbers)-1);  
     
      // ao reduzir um vetor,
      // a liberação ocorre na ordem do maior para o menor índice
      // de tal forma que os itens iniciais
      // não são alterados ao reduzir o tamanho
      for number in numbers do WriteLn(number);  
    end.

Entretanto, em geral, não é recomendado usar um vetor de texto, mas sim uma lista de texto. Uma lista de texto (o tipo “TStringList”) é uma classe e classes serão apresentadas com mais detalhes nas seções seguintes. No momento, note que uma lista de texto é enumerável. Tipos enumeráveis podem ser percorridos como vetores, possibilitando o acesso a cada um de seus itens. Classes enumeráveis, portanto, podem ser percorridas como vetores.

    uses Classes; // torna o tipo ‘TStringList’ visível neste módulo
     
    var
      Names : TStringList; // declara Names como do tipo TStringList
      name : string;      
    begin
      // Note que o caractere "ponto" (.) é utilizado
      // para acessar o conteúdo de classes e objetos
     
      // inicializa um objeto do tipo lista de texto (TStringList)
      Names := TStringList.Create;         
     
      // atribui um texto delimitado à lista
      Names.DelimitedText := 'thais maria clara bárbara joana'; 
     
      // adiciona um item ao final da lista
      Names.Append('marcela');                
     
      // percorre a lista escrevendo cada nome
      for name in Names do WriteLn(name);  
     
      // libera a lista da memória
      Names.Free; 
     
      // Sempre libere as listas da memória ao final!
    end.

### Procedimentos, Funções, Argumentos

Procedimentos e funções são estruturas que permitem a modularização e a reutilização de blocos de comandos. Por exemplo, ao invés de repetir diversas vezes os mesmos comandos, você pode declarar um procedimento contendo esses comandos. Considere os seguintes comandos:

    var
     i : integer;
    begin
     
      i := 1;
      WriteLn('-------------------------------------');
      WriteLn('-    bloco de comandos    -');
      WriteLn('-------------------------------------'); WriteLn(i);
     
      i := 2;
      WriteLn('-------------------------------------');
      WriteLn('-    bloco de comandos    -');
      WriteLn('-------------------------------------'); WriteLn(i);
     
      i := 3;
      WriteLn('-------------------------------------');
      WriteLn('-    bloco de comandos    -');
      WriteLn('-------------------------------------'); WriteLn(i);
     
      i := 4;
      WriteLn('-------------------------------------');
      WriteLn('-    bloco de comandos    -');
      WriteLn('-------------------------------------'); WriteLn(i);
    end.

Uma alternativa para evitar repetições seria declarar um procedimento:

      // declara o procedimento WriteBloc com o argumento ABlocNumber
     procedure WriteBloc(ABlocNumber : integer);
      begin
        WriteLn('-------------------------------------');
        WriteLn('-    bloco de comandos    -');
        WriteLn('-------------------------------------');
        WriteLn(ABlocNumber);
     end;  
     
      var
        i : integer;
          
      begin
        i := 1;
        WriteBloc(i); // chama o procedimento
     
        i := 2;
        WriteBloc(i);
     
        i := 3;
        WriteBloc(i);
     
        i := 4;
        WriteBloc(i);
     end.
     
    Um laço evitaria ainda mais repetições:
     
      begin
        for i := 1 to 4 do WriteBloc(i);
     end.

Todo procedimento ou função possui um identificador e uma assinatura com ou sem argumentos. Procedimentos podem ser declarados de diferentes maneiras no contexto de uma unidade, mas só é possível chamá-los de acordo com as regras de visibilidade da unidade:

     unit Unit1;
      {   apenas a assinatura de procedimentos pode ser
        declarada na interface de uma unidade }
     interface 
     
      { procedimentos possuem ou não argumentos de entrada em sua assinatura }
      // declara o identificador PublicCommand como um procedimento sem argumentos:
     procedure PublicCommand;
     
      // declara um procedimento com um argumento:
     procedure AnotherPublicCommand(AString : string);
     
      // declara um procedimento com dois argumentos:
     procedure YetAnotherCommand(AString1 : string; AInteger : integer);
     
      { procedimentos declarados na interface devem ser redeclarados na implementação }
      implementation
      { procedimentos declarados apenas na implementação
         não podem ser vistos por outras unidades usando esta unidade }
     procedure PrivateCommand;
      begin
     end;
     
     procedure PublicCommand;
        procedure NestedCommand; 
        begin { procedimentos declarados dentro de procedimentos, chamados aninhados,
        end;  são visíveis apenas em seu bloco de execução }
      begin
        NestedCommand;  // executa o comando aninhado deste procedimento
        PrivateCommand; // executa um comando privado da unidade
     end;
     
     procedure AnotherPublicCommand(AString: string);
        procedure NestedCommand;
        begin
        end;
      begin
        NestedCommand;  // executa o comando aninhado deste procedimento
        PrivateCommand; // executa um comando privado da unidade
     end;
     
     procedure YetAnotherCommand(AString1: string; AString2: string);
     const                // constantes podem ser locais
        LConst = 10; 
     var                  // variáveis também podem ser locais
        LInteger : integer; 
        LBoolean : boolean;
        LString  : string;
        procedure LocalCommand; 
        begin
     
        end;
      begin
     end; 
     end.

Os argumentos de um procedimento podem receber prefixos que determinam como uma variável será passada ao procedimento.
Um argumento sem prefixos é uma cópia da variável de entrada, isso significa que a cópia será modificada dentro do procedimento e a variável original não será modificada:

     // declarando o procedimento AssignParameter
     procedure AssignParameter(AValue : integer):
     begin
        AValue := 20;
     end;
      {...}
      var
       i : integer = 10;
      begin
        AssignParameter(i); // chamando o procedimento AssignParameter
        // note que i permanece igual a 10
     end;

O prefixo “var” permite alterar a variável original de entrada:

     // assinatura do procedimento Inc
     procedure Inc(var AVariable: TOrdinal);
      {...}
     var 
        InputVariable : integer = 0;      // inicializa i com o valor inicial 0
     begin // chamando o procedimento Inc
        Inc(InputVariable);               // incrementa i
        // InputVariable = 1  
     end;

O prefixo “out” permite alterar a variável original, mas ignora seu valor inicial.

     // assinatura do procedimento WriteStr
     procedure WriteStr(out OutputString: string; Args: Arguments);
      {...}
      var                                       // OutputString não possui um valor inicial, 
      OutputString : string;// pois não foi inicializada
      i : integer = 50;
      begin // chamando o procedimento WriteStr, ele converte i para texto 
        WriteStr(OutputString, i);// e inicializa Outputstring com '50'
        // OutputString = '50'
     end;

O prefixo “const” informa que a variável não será alterada:

     // assinatura do procedimento ReadStr
     procedure ReadStr(const S: string; Args: Arguments);
      {...}
      // chamando o procedimento ReadStr
      var
        ConstantInput : string = '10 20 Texto';
        i1, i2 : integer;
        s : string;
      begin
      {
     
        Importante
        ****************
        Argumentos do tipo "Arguments" são especiais.
        Eles não podem ser redeclarados pelo programador, apenas usados por ele.
        O programador pode incluir diversos argumentos de tipos conhecidos
        na posição de um argumento "Arguments". 
        O compilador fará as conversões necessárias se elas forem possíveis.
        ****************
      }
        ReadStr(ConstantInput, i1, i2, s);
       
        // ConstantInput = '10 20 Texto'  
        // i1 = 10
        // i2 = 20
        // s = 'Texto'
     end;

Note que as funções “Inc”, “WriteStr” e “ReadStr” são funções da unidade “System”. Funções são exatamente como procedimentos, mas necessariamente retornam um resultado de um tipo específico. Ao escrever uma função, use a variável “Result” para salvar o resultado. Essa variável é automaticamente declarada e acessível dentro de qualquer função:

     // declara uma função sem argumentos que retorna um boleano:
     function GetBoolean : Boolean;
     begin
        Result := true;
     end;
     
     // declara uma função que retorna um texto:
     function GetString : string;
     begin
        Result := 'texto';
     end;
     
     // declara uma função que retorna um valor inteiro:
     function GetInteger : integer;
     begin
       Result := 0;
     end;

Conversões entre tipos frequentemente são realizadas por meio de funções. Funções comuns de conversão estão localizadas na unidade “SysUtils”.

    uses SysUtils;   // unidade com muitas funções de conversão
     
    {...}
     
     s := IntToStr(i); // converte um inteiro para texto 
     i := StrToInt(s); // converte um texto para inteiro
     i := StrToIntDef(s, 0); // converte um texto para inteiro, em caso de erro retorna 0
     b := StrToBoolDef(s, false) // converte um texto para boleano
                                 // em caso de erro retorna false

Frisa-se que argumentos do tipo “Arguments” (comuns na unidade “System”) são exclusivos do compilador e não podem ser redeclarados. Se um número incerto de parâmetros de um mesmo tipo for necessário, use um vetor como argumento:

      // declara o procedimento ManyStrings
     procedure ManyStrings(AStrings : array of string);
      var
        i : integer;
        s : string;
      begin
        for i := Low(AStrings) to High(AStrings) do
        begin
          s := AStrings[i];
        end;
     end;
     
      // chamando o procedimento ManyStrings
     
      begin
        ManyStrings(['texto1', 'texto2', 'texto3']);
        ManyStrings(['texto1', 'texto2']);
        ManyStrings(['texto1']);
     end;

### Classes, Propriedades e Eventos

Variáveis, procedimentos e funções também permitem a construção de eventos, propriedades e classes de objetos. A arquitetura de eventos, propriedades e classes está fora do escopo do presente guia. Para informações detalhadas sobre arquitetura, procure por padrões de projeto (*Design Patterns*) nas ferramentas de busca, eles são, frequentemente, independentes de linguagens.

Ainda assim, é possível usar arquiteturas existentes ou apenas usar aspectos delas, mantendo-se agnóstico sobre os detalhes. Para isso, o objetivo no momento é de compreender a sintaxe de classes, e como fazer uso de propriedades e eventos de classes existentes.

No contexto de programas orientados a objetos, eventos devem ser entendidos como um tipo de mensagem que um objeto pode enviar ou receber de outros objetos. Objetos são instâncias criadas por meio de classes. Classes são, literalmente, abstrações de coisas no mundo que possuem relações hierárquicas entre si. Essas abstrações tem o objetivo, dentre outros, de apreender o comportamento de coisas no mundo e tornar o programa intuitivo para aqueles que conhecem essas coisas no mundo. Por exemplo, considere uma lista de texto. O que normalmente se faz com uma lista de texto?

    var
      list : TStringList;
    begin
      // criar uma lista de texto, isto é, reservar um espaço na memória para ela
      list := TStringList.Create;
     
      // limpar o conteúdo da lista
      list.Clear;
     
      // adicionar um texto ao final da lista
      list.Append('texto 1');
     
      // adicionar outro texto ao final da lista
      list.Append('texto 2');
     
      // alternar a posição de textos na lista 
      list.Exchange(0, 1);
     
      // liberar a lista da memória
      list.Free;
    end; 

Objetos frequentemente possuem eventos associados a eles. Sintaticamente, um evento é um tipo que contém a assinatura de um método:

     type // inicia um bloco de declaração de tipo
        TNotifyEvent = procedure(Sender : TObject) of object;
     
      // O tipo de evento "TNotifyEvent" está declarado na unidade "Classes"
     
      // "Sender" é o objeto que enviou a mensagem
      // ou, em outras palavras, o objeto que disparou o evento

Eventos podem ser declarados como variáveis de uma classe e acessados diretamente ou por meio de propriedades. No pascal orientado a objetos, todas as classes possuem os métodos da classe “TObject”. Em um jargão técnico, todas as classes herdam os métodos de um ancestral comum que é o “TObject”. Isso significa que todas as classes podem, em alguma medida, conversar entre si por meio de eventos que tenham um “TObject” como argumento. A seguir a classe “TMyForm” é declarada tendo como ancestral a classe “TForm”. A classe “TForm” abstrai o comportamento básico esperado de uma janela. Note que um novo evento “NotifyEvent” foi declarado. Identifique como atribuir um valor ao evento e como dispará-lo por meio dos comentários a seguir:

    interface
       
    type
      TMyForm = class(TForm)
        procedure SomeEvent(Sender : TObject);  
      private
        // internamente, eventos são uma variável
        FNotifyEvent : TNotifyEvent; 
       
        // e possuem um procedimento de escrita
        procedure SetNotifyEvent(ANotifyEvent : FNotifyEvent);
      public
       
        // eventos frequentemente são acessados por meio de propriedades
        property NotifyEvent : TNotifyEvent read FNotifyEvent write SetNotifyEvent;
      end;
       
      {
        Para atribuir um valor a um evento,
        use o prefixo "@" no procedimento alvo.
        Por exemplo, o procedimento "SomeEvent"
        poderia ser atribuído à "NotifyEvent" assim:
           
          NotifyEvent := @SomeEvent;
           
        e disparado assim:
           
          NotifyEvent(Self);
       
        "Self" é uma variável especial dentro de uma classe.
        Ela contém a identidade de um certo objeto.
        Todos os objetos possuem identidades diferentes. 
       
        Lembre que "evento" e "procedimento" devem
        possuir a mesma assinatura para que uma
        atribuição seja possível.
      }

## A aplicação padrão do Lazarus

### Diretivas de compilação

Em geral, você não precisa se preocupar com diretivas. Mas é importante saber que elas são palavras-chave entre chaves iniciadas por um cifrão: **{$DIRETIVA}**. Diretivas de compilação são instruções ao compilador (ao Free Pascal), não instruções do programa (neste contexto, o código do projeto piloto). Elas podem incluir elementos, assim como mudar o significado de elementos sintáticos de um dialeto. As seguintes diretivas especificam o dialeto utilizado neste guia. Ele corresponde ao dialeto da aplicação padrão do Lazarus (a interface de desenvolvimento):

      // diretivas incluídas por padrão nos módulos criados pelo Lazarus
     {$MODE ObjFPC}   // habilita a sintaxe de orientação ao objeto
     {$H+}            // Torna o tipo String um apelido para o tipo AnsiString
     
      // diretivas não incluídas por padrão nos arquivos,
      // mas passadas por padrão pelo Lazarus ao compilador
     {$COPERATORS ON} // habilita os operadores +=, -=, *= e /=
     {$GOTO ON}       // habilita as palavras-chave label e goto
     {$INLINE ON}     // habilita a declaração de procedimentos inline

### O formato dos arquivos

Diversos elementos da sintaxe básica podem ser identificados na aplicação padrão do Lazarus. Para abrir o arquivo de projeto da aplicação; clique sobre a janela Editor de Código, pressione CTRL+O e selecione o arquivo “projetopiloto.lpr”. Esse arquivo possui a seguinte estrutura:

      
     program ProjetoPiloto; // projetopiloto.lpr                 
     
      {$mode objfpc}{$H+} // diretivas de compilação 
     
     uses   // início do bloco de uso de unidades
        Interfaces, // uma interface específica para o sistema torna-se disponível 
        Forms,      // torna a classe TForm visível
        Unit1       // torna a variável Form1 visível  
     ;             // final do bloco de uso de unidades
     
      {$R *.res} // inclui recursos auxiliares no arquivo executável
     
     begin // início do bloco de execução central do programa
     
        // produz um erro se uma janela for criada sem recursos
        RequireDerivedFormResource:=true;  
         
        // inicializa a interface gráfica, dentre outras coisas...
        Application.Initialize;                
         
        // cria o componente TForm1 atribuindo o resultado à variável Form1
        Application.CreateForm(TForm1, Form1); 
         
        // carrega a janela principal (Form1) e o laço (loop) de eventos
        Application.Run;                       
     end. // final do bloco de execução central do programa 


Para os objetivos do presente guia, o arquivo de projeto será gerenciado automaticamente pelo Lazarus e apenas o arquivo contendo a janela principal será editado. Abra o arquivo “Forms.Main.pas” na janela do editor de código e confira sua estrutura:

      
     unit Forms.Main;    // título e início da unidade
     
     {$mode objfpc}{$H+} // diretivas de compilação
     
     interface           // bloco público da unidade
     
     uses          // bloco de uso com sete unidades
        Classes,    // classes e métodos para criação de objetos recorrentes 
        SysUtils,   // classes e métodos para conversões entre tipos básicos 
        FileUtil,   // classes e métodos para o manuseio de arquivos
        Forms,      // classes e métodos para a criação de janelas
        Controls,   // classes e métodos para a criação de controles visíveis
        Graphics,   // classes e métodos para o manuseio de imagens
        Dialogs;    // classes e métodos para a criação de caixas de mensagens
     
     type          // bloco de tipo
     
        // declara uma nova classe de janela (que você pode customizar)
        TForm1 = class(TForm) 
        private    // campo privado da classe
     
        public     // campo público da classe
     
        end;       // final da declaração da classe
     
     var          // bloco de declaração de variáveis
     
        // declara Form1 como um objeto da classe de janelas TForm1
        Form1: TForm1; 
     
     implementation // campo privado da unidade
     
      // inclui recursos auxiliares no arquivo executável da aplicação
      {$R *.lfm} 
     
     end. // final da unidade


Como customizar a classe TForm1 e adaptá-la às nossas necessidades?

## Exemplos

Os exemplos a seguir ilustram como resolver tarefas básicas relacionadas ao registro do comportamento e apresentação de eventos ambientais. Procedimentos e eventos simples serão implementados com o auxílio de recursos visuais e atalhos de teclado da interface.

### Exemplo 1. Registro tabulado de frequência e tempo

Alguns computadores pessoais permitem registrar eventos na escala de nanosegundos. Mas a escala de tempo do comportamento ao olho nu é bem mais lenta, e registros muito bem detalhados podem ser obtidos com granularidade máxima na escala de milissegundos. A granularidade do sistema de registro é sua frequência de amostragem. Ela ocorrer, ou melhor, deve ocorrer de forma monotônica, isto é, não devem haver saltos irregulares de tempo no gerador das unidades de tempo: o relógio do computador.

Para obter um registro em milissegundos, implemente a unidade “Timestamps”. Crie uma nova unidade por meio do menu superior “Arquivo->Nova Unidade”:

      
     unit Timestamps;
     
      {$mode objfpc}{$H+}
     
      interface
     
      // essa função pode ser chamada muitas vezes
      // por isso a directiva "inline" é declarada ao final
     function Miliseconds(FirstTickCount : Cardinal) : string; inline; 
     
      implementation
     
     uses SysUtils; 
     
      // um registro cumulativo de tempo deve tomar 
      // o primeiro registro como referência (FirstTickCount)
     
      // o tipo cardinal só admite valores
      // inteiros maiores ou iguais a zero 
     function Miliseconds(FirstTickCount : Cardinal) : string;
      begin
        // a função GeTickCount64 retorna um tempo monotônico em milisegundos
        // a função IntToStr converte o valor para texto
        Result := IntToStr(GetTickCount64 - FirstTickCount);  
     end; 
     
     end.


Registros de texto tabulados além de permitirem a inspeção visual por meio de editores de texto simples, também permitem a automação da leitura dos dados para posterior tratamento e análise. Registros tabulados também são simples de serem implementados com o Free Pascal. Crie uma nova unidade e implemente um registrador tabulado da seguinte maneira:

     
     unit TabDelimitedReport;
     
      {$mode objfpc}{$H+}
     
      interface
     
      type
     
        { TTabDelimitedReport }
     
        TTabDelimitedReport = class
        private
          FFilename : string;
          FTextFile : TextFile;
          procedure SetFilename(AFilename: string);
        public
          procedure CloseFile;
          procedure NextFile;
          procedure WriteRow(Cols : array of string);
          property Filename : string read FFilename write SetFilename;
        end;
     
      var
        Report : TTabDelimitedReport;       // variável pública
     
      implementation
     
     uses SysUtils, LazFileUtils; // torna visível funções para o manuseio de arquivos
     
     procedure TTabDelimitedReport.WriteRow(Cols: array of string);
      const
        TAB = #9;
      var
        i : Integer;
        LastColumn : Integer;
      begin
        LastColumn := High(Cols);
        for i := 0 to LastColumn do          // percorre todos os itens
          if i < LastColumn then             // se antes do último item
            Write(FTextFile, Cols[i]+TAB)    // escreve item e TAB        
          else               // se último escreve item e final de linha
            WriteLn(FTextFile, Cols[i]);  
        Flush(FTextFile);                    // salva as mudanças no disco rígido 
     end;
     
     procedure TTabDelimitedReport.SetFilename(AFilename: string);
      var
        LFilePath, LExtension, LBasename: string;
        i : Integer;
      begin
                         // retorna o caminho raiz do nome de arquivo
        LFilePath := ExtractFilePath(AFilename);
     
                         // retorna apenas o nome base do arquivo
                         // sem extenção e sem caminho
        LBasename := ExtractFileNameOnly(AFilename);
     
                           // retorna a extenção do nome do arquivo
        LExtension := ExtractFileExt(AFilename);
     
                           // caso a extenção seja vazia ou .exe
                           // a extenção torna-se '.txt' 
        case LExtension of
        '', '.exe' : LExtension:='.txt';
        end;
     
                            // nunca subscreva um arquivo já existente
                            // se o arquivo existir, incremente seu nome
        i := 0;
        while FileExists(AFilename) do
          begin
            Inc(i);
            AFilename := LFilePath+LBasename+'_data_'+Format('%.3d', [i])+LExtension;
          end;
     
                             // atribui um nome ao arquivo de texto
        AssignFile(FTextFile, AFilename);
        Rewrite(FTextFile);    // abre o arquivo de texto para escrita
        FFilename:=AFilename;  // salva o nome do arquivo para uso posterior
     end;
     
     procedure TTabDelimitedReport.NextFile;
      begin
        SetFilename(FFilename);             // abre um novo arquivo
     end;
     
     procedure TTabDelimitedReport.CloseFile;
      begin
        System.Close(FTextFile);            // fecha o arquivo de texto
     end;
     
     initialization // antes de executar o programa, crie (a memória do) objeto
        Report := TTabDelimitedReport.Create;
     
     finalization   // após finalizar o programa, libere (a memória do) objeto
        Report.Free;
     
     end.


Em seguida, selecione o arquivo “Forms.Main.pas” (correspondente a janela principal) e use as unidades “Timestamps” e “TabDelimitedReport” na cláusula privada de uso de unidades:

     
     implementation  // campo privado da unidade
     
      {$R *.lfm}
     
      // torna visível a variável do relatório (Report)
      // e a função Miliseconds
     uses TabDelimitedReport, Timestamps; 
     
     end.   
     
Para criar um arquivo de texto e o cabeçalho (“Tempo Categoria Evento”), utilize o evento de criação da janela principal:

- Selecione o arquivo “Forms.Mains.pas”.
- Selecione a janela principal (Aperte F12).
- Clique duas vezes sobre o fundo da janela principal.
- O procedimento padrão “OnCreate” será declarado automaticamente.
- implemente o procedimento da seguinte maneira:

```      
procedure TForm1.FormCreate(Sender: TObject);
begin
  // use a variável pública da unidade TabDelimitedReport
  // a propriedade Filename permite criar e inicializar
  // o arquivo de texto do relatório
  Report.Filename := Application.ExeName;

  // Application refere-se à variável
  // da unidade Forms. A propriedade ExeName
  // retorna o caminho completo do arquivo executável da aplicação
   
  // escreve o cabeçalho do programa
  Report.WriteRow(['Tempo', 'Categoria', 'Evento']);
end; 
```    
Ao final do programa, é necessário fechar o arquivo de texto. Para isso usaremos o evento de finalização da aplicação:

- Selecione o arquivo “Forms.Main.pas”.
- Alterne para a janela principal (Aperte F12).
- Clique sobre o fundo da janela principal.
- Selecione a janela Inspetor de Objetos (Aperte F11).
- Selecione a aba Eventos.
- Clique duas vezes sobre o campo em branco do evento “OnDestroy”.
- O procedimento será declarado automaticamente, implemente-o da seguinte maneira:
```
procedure TForm1.FormDestroy(Sender: TObject);
begin
  // fecha o arquivo de texto
  Report.CloseFile;
end;
```

Por meio de diversas chamadas ao procedimento “WriteRow” do objeto “Report”, um relatório em formato de texto simples com a seguinte estrutura é esperado:

     Tempo   Categoria         Evento
     0000   estimulo     S1
     2000   resposta     R1
     2500   estimulo     C1
     5050   estimulo     S1
     5500   resposta     R2
     6000   resposta     R2
     6100   resposta     R2
     7000   resposta     R2
     9000   resposta     R1
     9500   estimulo     C1

Um relatório deve conter todas as informações de interesse. Nesse caso, duas respostas (R1 e R2) e dois estímulos (S1 e C1) devem ser registrados pelo programa. O programa está pronto para rastreá-los. Mas como detectar a ocorrência desses eventos?

### Exemplo 2. Rastreamento de estímulos e respostas

Rastreadores de função e forma são requisitos para análises comportamentais que almejam alto poder preditivo. Por ser multideterminado, o comportamento demanda a análise conjunta de múltiplas fontes de dados. Na presente ocasião, por questões didáticas, a ênfase será na forma. Ao interagir com uma interface gráfica, dois tipos de eventos serão de especial interesse: respostas ao teclado e respostas ao mouse. Adicionalmente, estímulos, como mudanças na visibilidade de componentes da interface, serão rastreados por meio de um evento customizado. Crie uma nova unidade e implemente o evento da seguinte maneira:

     unit Behavior.Events;
     
      {$mode objfpc}{$H+}
     
      interface
     
      uses
        Classes;   // torna visível a classe TObject
     
     type         // bloco de declaração de tipo
        // o procedimento recebe o nome de uma categoria, um evento
        // e o objeto que enviou a mensagem
        TBehavioralEvent = procedure(Sender: TObject; const Category: string;
       const Event:string) of object;
     
        // define as possíveis categorias como constantes simples
      const
        BehavioralEvent = 'resposta';
        EnviromentEvent = 'estimulo';
        SystemEvent = 'virtual';
     
      implementation
     
        // toda unidade precisa de um bloco de implementação
        // ainda que vazia
     
     end.

A unidade com o evento comportamental deve ser usada em duas outras unidades. Primeiramente, a classe de estímulos “TStimulus” deve criada a partir da classe “TImage”. A classe “TImage” possui eventos de mouse e métodos para a apresentação de figuras. Crie uma nova unidade e implemente a classe “TStimulus” da seguinte maneira:

    unit ExtCtrls.Stimulus;
     
    {$mode objfpc}{$H+}
     
    interface
     
    uses
      ExtCtrls,        // torna visível a unidade TImage
      Behavior.Events; // torna visível o evento TBehavioralEvent
     
    type
      
      { TStimulus }
     
      TStimulus = class(TImage) // cria a classe TStimulus a partir da casse TImage
      private
        FOnVisibilityChange: TBehavioralEvent;
        procedure SetOnVisibilityChange(AValue: TBehavioralEvent);
      protected
        // a directiva override permite customizar o procedimento
        // SetVisible da classe Timage este procedimento é usado
        // para detectar a mudança de visibilidade dos estímulos
        procedure SetVisible(Value: Boolean); override;
      public
        // para declarar o evento comportamental
        // escreva "property OnVisibilityChange : TBehavioralEvent;"
        // e em seguida aperte CTRL+SHIFT+C
        // a propriedade será declarada automaticamente
      property OnVisibilityChange : TBehavioralEvent read FOnVisibilityChange write
     SetOnVisibilityChange;
      end;
     
    implementation
     
    { TStimulus }
     
    procedure TStimulus.SetOnVisibilityChange(AValue: TBehavioralEvent);
    begin
      if FOnVisibilityChange=AValue then Exit;
      FOnVisibilityChange:=AValue;
    end;
     
    procedure TStimulus.SetVisible(Value: Boolean);
    begin // implementação de eventos de estímulo 
      // primeiramente é necessário 
      // chamar o procedimento SetVisible de TImage
      // isso é possível por meio do prefixo inherited
      inherited SetVisible(Value);
      // se um valor foi atribuido à propriedade então
      if Assigned(OnVisibilityChange) then   
        if Value then // se visível
          // dispara o evento da propriedade como "Show"
          OnVisibilityChange(Self, EnviromentEvent, 'Show') 
        else          // se invisível
          // dispara o evento da propriedade como "Hide"
          OnVisibilityChange(Self, EnviromentEvent, 'Hide');
     end;
    end.

Em seguida os estímulos devem ser criados, configurados e apresentados na janela principal da aplicação. Os eventos associados à janela também devem ser implementados e configurados. Implemente-os da seguinte maneira:

      unit Forms.Main;
         
      {$mode objfpc}{$H+}
         
      interface
         
      uses
        Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
        ExtCtrls.Stimulus; // torna visível a classe TStimulus
         
      type
         
        { TForm1 }
         
        TForm1 = class(TForm)
          // declara um estímulo antecedente
          StimulusAntecedent : TStimulus;
         
          // declara um estímulo consequente 
          StimulusConsequent : TStimulus; 
         
          // declara o procedimento dos eventos de clique da janela
          procedure ComponentClick(Sender: TObject);  
         
          // declara o procedimento dos eventos de teclado da janela
          procedure ComponentKeyPress(Sender: TObject; var Key: char);
         
          // declara o procedimento de criação da janela
          procedure FormCreate(Sender: TObject);
          
          // declara o procedimento de destruição da janela
          procedure FormDestroy(Sender: TObject);
          
          // declara o procedimento de registro de respostas e estímulos
          procedure RecordBehavior(Sender: TObject; const Category:string;
            const EventSufix: string); inline;
        private
          // declara uma variável privada para o valor de início do registro
          FFirstTickcount : Cardinal;
         
          // declara um método de ajuda para a criação e configuração dos
          // estímulos
          procedure CreateStimulus(out AStimulus : TStimulus; AColor : TColor;
            ASize : integer = 300; ALeft : integer = 0; ATop: integer = 0);
        public
         
        end;
         
      var
        Form1: TForm1;
         
      implementation
         
      // unidades usadas apenas na implementação
      uses TabDelimitedReport, Timestamps, Behavior.Events; 
         
      {$R *.lfm}
         
      { TForm1 }
         
         
      // o que acontece quando a janela principal for criada?
     procedure TForm1.FormCreate(Sender: TObject);
      begin
      // cria o estímulo antecedente com cor preta
        CreateStimulus(StimulusAntecedent, clBlack,150,0,0);
         
        // cria o estímulo consequente com cor azul
        CreateStimulus(StimulusConsequent, clBlue,100,200,0);
         
        // os estímulos são rastreados pelos seus
        // respectivos nomes
        StimulusAntecedent.Name:='Preto';
        StimulusConsequent.Name:='Azul';
         
        // cabeçalho do relatório
        Report.Filename := Application.ExeName;
        Report.WriteRow(['Tempo', 'Categoria', 'Evento']);
         
        // valor de início do registro independente da hora local
        FFirstTickcount := GetTickCount64;
         
      // início de acordo com a data e hora local
        RecordBehavior(Sender, SystemEvent, 'inicio:'+DateTimeToStr(Now));
         
        // mostra o estímulo antecedente
        StimulusAntecedent.Show;
      end;
         
      // o que acontece quando a janela principal for destruida?
     procedure TForm1.FormDestroy(Sender: TObject);
      begin
        // registra o final de acordo com a hora local
        RecordBehavior(Sender, SystemEvent, 'final:'+DateTimeToStr(Now));
         
        // finaliza o relatório
        Report.CloseFile;
      end;
         
     procedure TForm1.RecordBehavior(Sender: TObject; const Category: string;
        const EventSufix: string);
      var
        SenderName: string;
      begin
        // o rastreamento ocorre por meio
        // do nome dos objetos
        if Sender is TComponent then
          SenderName := TComponent(Sender).Name
        else
          SenderName := Sender.ClassName;
         
      // registra uma linha no relatório
        Report.WriteRow([
          Miliseconds(FFirstTickcount),
          Category,
          SenderName+#32+EventSufix
        ]);
      end;
         
     procedure TForm1.CreateStimulus(out AStimulus: TStimulus; AColor: TColor;
        ASize: integer; ALeft: integer; ATop: integer);
      begin
        // note que AStimulus é um argumento de saída (out)
         
        // cria o estímulo na janela principal (self) 
        AStimulus := TStimulus.Create(Self);
         
        // define o tamanho do estímulo
        // Left e Top possuem origem no canto superior esquerdo do monitor:
        // Left pixel horizontal
        // Top pixel vertical
        AStimulus.SetBounds(ALeft, ATop, ASize, ASize);
         
        // define o tamanho da figura do estímulo
        AStimulus.Picture.Bitmap.SetSize(ASize, ASize);
         
        // define a cor da figura do estímulo
        AStimulus.Picture.Bitmap.Canvas.Brush.Color := AColor;
         
        // desenha um retângulo preenchido na figura com a cor definida
        AStimulus.Picture.Bitmap.Canvas.Rectangle(0,0, ASize, ASize);
         
      {****************** MUITO IMPORTANTE ********************}
         
        // não esqueça de definir aonde o estímulo será desenhado
        // isto é possível por meio da propriedade Parent
        // aqui definimos a janela principal (Self) como o
        // responsável por desenhar o estímulo
         
                                    AStimulus.Parent := Self;
         
      {********************************************************}
         
        // define a visibilidade inicial do estímulo
        AStimulus.Hide;
         
        // atribui um valor às propriedades dos estímulos
        // o operador @ deve ser usado na frente do
        // procedimento correspondente ao evento
        // da propriedade
        // para relembrar a assinatura do evento
        // segure CTRL e clique com o botão esquerdo na
        // propriedade
        AStimulus.OnVisibilityChange:=@RecordBehavior;
        AStimulus.OnClick:=@ComponentClick;
      
        // também seria possível carregar uma figura 
        // por meio do nome do arquivo da figura
        // AStimulus.Picture.LoadFromFile(AFilename);
        // AStimulus.Stretch := True;
      end;
         
      // o que acontece quando um componente é clicado?
      procedure TForm1.ComponentClick(Sender: TObject);
      begin
        // registra o comportamento de clique
        RecordBehavior(Sender, BehavioralEvent, 'Click');
          
        // altera a visibilidade dos estímulos
        // de acordo com os estímulos clicados
        if Sender = StimulusAntecedent then
          begin
            StimulusAntecedent.Hide;
            StimulusConsequent.Show;
          end;
        if Sender = StimulusConsequent then
          begin
            StimulusConsequent.Hide;
            StimulusAntecedent.Show;
          end;
      end;
         
      // o que acontece quando uma tecla é pressionada
      // tendo um componente em foco?
      procedure TForm1.ComponentKeyPress(Sender: TObject; var Key: char);
      const
        SpaceKey = #32;
        DeleteKey = #127;
      var
        Event : string = '';
      begin
        case Key of
          SpaceKey : Event := '<32>';
          DeleteKey: Event := '<127>';
          #0..#31  : Event := '<NA>';
        end;
        RecordBehavior(Sender, BehavioralEvent, Event);
      end;
         
      end.

Por fim, configure os eventos de clique (“OnClick” deve receber o valor de “ComponentClick”) e teclado (“OnKeyPress” deve receber o valor de “ComponentKeyPress”) da janela principal:

- Selecione o arquivo “Forms.Main.pas”.
- Alterne para a janela principal (Aperte F12).
- Clique sobre o fundo da janela principal.
- Selecione a janela Inspetor de Objetos (Aperte F11).
- Selecione a aba Eventos.
- No evento “OnClick”, selecione o evento “ComponentClick” na lista.
- No evento “OnKeyPress”, selecione o evento “ComponentKeyPress” na lista.
- Execute a aplicação e confira os resultados! O código fonte dos exemplos apresentados e de outros exemplos podem ser conferidos no seguinte repositório:
- [https://github.com/cpicanco/free-pascal-prototypes](https://github.com/cpicanco/free-pascal-prototypes)

## Referências

{% include references.html %}
