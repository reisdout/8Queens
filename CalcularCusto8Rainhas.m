

function Custo8Rainhas = CalcularCusto8Rainhas(parDistribuicao)
    

    hit = 0;

    tamTab = numel(parDistribuicao)
    
    %custo na horizontal
    for i = 1:tamTab-1

        for j = i+1:tamTab

            if parDistribuicao(i) == parDistribuicao(j)
                hit = hit+1
                disp(i)
                disp(j)
           
            end

        end
    end

    %custo diagonal ascendente
    
    for i = 1:tamTab-1
        for j = 1:tamTab-i
            if (parDistribuicao(i)+j) > tamTab
                break;
            end
            if (parDistribuicao(i)+j) == parDistribuicao(i+j)

                hit = hit+1
                disp(i)
                disp(j)

            end
        end
    end
   

    %custo diagonal descendente
    
    for i = 1:tamTab-1
        for j = 1:tamTab-i
            if (parDistribuicao(i)-j) < 1
                break;
            end
            if (parDistribuicao(i)-j) == parDistribuicao(i+j)

                hit = hit+1
                disp(i)
                disp(j)

            end
        end

    end
    Custo8Rainhas = 28-hit;





