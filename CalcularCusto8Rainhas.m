

function Custo8Rainhas = CalcularCusto8Rainhas(parDistribuicao)
    

    hit = 0;

    tamTab = numel(parDistribuicao)
    
    %custo na horizontal
    for i = 1:tamTab

        for j = i:tamTab

            if parDistribuicao(i) == parDistribuicao(j)
                hit = hit+1;
            end

        end
    end

    %custo diagonal superior
    
    for i = 1:tamTab
        for j = i:tamTab
        disp(parDistribuicao(i))
        parc = parc + parDistribuicao(i);
    end
    Custo8Rainhas = parc;