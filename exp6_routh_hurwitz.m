% WAP to determine the stability using the Routh Hurwitz criterion

n = input( 'Enter order of the characteristic equation: ' );
c = input( 'Enter the coefficients of q(s) in the order s^n,..,s^0: ' );

% checking if the first row is positive
% numel gives number of elements
% size(c,2) gives number of columns in c
if( numel(find(c>0)) == size(c,2) ) 
    routh = zeros (n+1, ceil((n+1)/2));
    % if number of coeffs is odd, add a 0 coeff
    if (mod(numel(c),2) == 1)
        c = [c 0];
    end
    % parting c into 2 columns for odd and even indexed coeffs
    c2 = reshape(c,2,[]);
    routh(1:2,:) = c2;
    for i = 3:size(routh,1)
        for j = 1:size(routh,2)-1
            routh(i,j) = (routh(i-1,1)*routh(i-2,j+1) - routh(i-2,1)*routh(i-1,j+1)) / routh(i-1,1);
            % element can not be 0
            if (routh(i,j) == 0)
                routh(i,j) = 0.00001;
            end
        end
    end
    
    routh     
    
    if (numel(find(routh(:,1)>0)) == n+1)
        disp('System is stable.')
    else
        disp('System is unstable.')
    end
    
else
    disp('Order and number of coeff(s) entered mismatch.')
end
