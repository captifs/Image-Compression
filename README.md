



Pentru taskul 1 am citit imagile si am obtinut valorile singulare folosind 

`svd : [U, S, V] = svd(A_k)`.

Pentru matricile U,S,V am facut descompunerea redusa a valorilor singulare, apoi am obtinut compresia imaginilor.

Task 2,6 am construit cele 4 grafice pentru primele 2 imagini , graficele se gasesc in  
>README.pdf.

Pentru taskul 3 am urmarit pasii prezentati in algoritmul din tema , am citit imaginea , am calculat media pe fiecare linie a matricii reactualizand matricea. 

Am facut matricea Z , am descompus-o in DVS. Am construit spatiul k-dimensional al componentelor principale, am calculat proiectia matricii A in spatiul componentelor principale si am calculat aproximarea matricii initiale.
___

Taskul 4 e ca taskul 3 , diferenta fiind in descompunerea matricii Z ca matrice de covarianta , descompunerea ei in valori proprii apoi calcularea spatiului si proiectiei in spatiul componentelor principale.
___

La task6 am citit imaginile din directorul specificat si le-am transformat in vector coloana. 

Am calculat media pe fiecare linie din matricea 40 mii pe 10 , si cu rezultatele obtinute am reactualizat matricea. 

Am aflat matricea 
`A = T-m` 

Am determinat matricea cu fetele proprii `A*V` , unde V sunt vectorii proprii corespunzatori valorilor proprii mai mari ca 1 ale matricii `A'*A` . 

Am calculat proiectia fiecarei imagini din multimea de imagini in spatiul fetelor sub forma de vector coloana, iar la final am determinat cea mai mica distanta dintre proiectiile imaginii de test obtinute anterior.
