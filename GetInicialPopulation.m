

function InicialPopulation = GetInicialPopulation(parMinBound, parMaxBound,parDimension, parPopSize)
    
        
        tmpPop = zeros(parPopSize,parDimension);

        for i = 1:parPopSize

            for j = 1:parDimension

                x= round(parMinBound + rand()*(parMaxBound-parMinBound))

                tmpPop(i,j) = x; 
           
            end

            
        end
    
        InicialPopulation = tmpPop;