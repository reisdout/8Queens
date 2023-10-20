function donorVector = GetDonorVector(parPoP,parFactor)


        [popSize,domainDimension] = size(parPoP);
        tmpDonor = zeros(popSize,domainDimension);


        for i = 1:popSize

            for j = 1:domainDimension

                r1 = randi([1,8]);
                r2 = randi([1,8]);
                r3 = randi([1,8]);

                x= mod(round(r1+parFactor*abs((r3-r2))),8)+1;

                tmpDonor(i,j) = x; 
           
            end

            
        end
    

        donorVector = tmpDonor;