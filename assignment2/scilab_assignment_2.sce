disp("Enter the matrix")
A = [input("value"), input("value"), input("value"); input("value"), input("value"), input("value"); input("value"), input("value"), input("value")];
disp("The matrix is:")
disp(A)

function Colspace(A)
    [m,n] = size(A);
    A(2,:) = A(2,:) - (A(2,1)/A(1,1))*A(1,:);
    A(3,:) = A(3,:) - (A(3,1)/A(1,1))*A(1,:);
    disp(A) ;
    A(3,:) = A(3,:) - (A(3,2)/A(2,2))*A(2,:);
    disp(A);
    A(1,:) = A(1,:)/A(1,1);
    A(2,:) = A(2,:)/A(2,2);
    disp(A);
    for i=1:m
        for j=i:n
            if (A(i,j)<>0)
                disp('is a pivot column' ,j, 'column');
                break
            end
        end
    end
endfunction

function Subspaces(A)
    [m,n] = size(A);
    disp(m, 'm=')
    disp(n, 'n=')
    [v, pivot] = rref(A);
    disp(rref(A));
    disp(v);
    r = length(pivot);
    disp(r, 'Rank=')
    cs = A(:,pivot);
    disp(cs, 'Column space=');
    ns = kernel(A);
    disp(ns, 'Null space=');
    rs = v(1:r,:)';
    disp(rs, 'Row space=');
    lns = kernel(A');
    disp(lns, 'Left null space=');
endfunction
