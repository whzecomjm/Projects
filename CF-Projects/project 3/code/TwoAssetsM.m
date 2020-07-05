
Smax=15; 
T=1; 
r=0.05; 
q1=0.02;
q2=0.03; 
r1=r-q1;
r2=r-q2;
vol1 =0.40;
vol2 =0.40;
% Grid Initialization
timestep =0.01; 
stockstep =0.5; 
h=0.2;
T = 20;
N=T; % Number of Time 
M=Smax/stockstep+1; % Number of Stock
s1=linspace (0 ,Smax,M); % all the nodes on the x 
s2=linspace (0 ,Smax,M); % all the nodes on the y 
[ S1 , S2]= meshgrid ( s1 , s2 ) ;
%timestep=T/N;
%stockstep=Smax/M;
MM=M-2; %the interior nodes on the space mesh 
% Final Condition t=T, set up matrix V(T)
V_T=zeros(M,M);
for i=1:M
    for j=1:M
    V_T( i , j )=max( S1 ( i , j ) , S2 ( i , j ) ) ;
    end
end


% Set up the matrix A and the vector b 
A=zeros(MM^2,MM^2); 
b=zeros(MM^2,1);
% using the boundary conditions: v(0,s2,t)=s2&v(s1,0,t)=s1 
i =1; j =1;
A( i , i )=( vol1 ^2)* s1 ( i +1)^2/(h*h)+( vol2 ^2)*( s2 ( j +1)^2)/(h*h)+r ; 
A(i , i+1)=-(r1*s1(i+1))/(2*h)-(vol1^2)*s1(i+1)^2/(2*h*h);
A(i , i+MM)=-(r2*s2(j+1))/(2*h)-(vol2^2)*s2(j+1)^2/(2*h*h);

b(i)=((r1*s1(i+1))/(2*h)-(vol1^2)*s1(i+1)^2/(2*h*h))*s2(j +1)... 
    +((r2*s2 ( j +1))/(2*h)-(vol2 ^2)* s2 ( j +1)^2/(2*h*h))* s1 ( i +1);
% using the boundary condition: v(0,s2,t)=s2 
j =1;
for i=2:(MM-1)
A( i , i )=( vol1 ^2)* s1 ( i +1)^2/(h*h)+( vol2 ^2)*( s2 ( j +1)^2)/(h*h)+r ; A(i , i+1)=-(r1*s1(i+1))/(2*h)-(vol1^2)*s1(i+1)^2/(2*h*h);
A(i ,i-1)=(r1*s1(i+1))/(2*h)-(vol1^2)*s1(i+1)^2/(2*h*h);
A(i , i+MM)=-(r2*s2(j+1))/(2*h)-(vol2^2)*s2(j+1)^2/(2*h*h);
b( i )=(( r2*s2 ( j +1))/(2*h)-(vol2 ^2)* s2 ( j +1)^2/(2*h*h))* s2 ( j +1);
end
% using the boundary conditions: v(INF,s2,t)=Smax&v(s1,0,t)=s1 
i =MM ; j = 1 ;
A( i , i )=( vol1 ^2)* s1 ( i +1)/(h*h)+( vol2 ^2)*( s2 ( j +1)^2)/(h*h)+r ; 
A(i ,i-1)=(r1*s1(i+1))/(2*h)-(vol1^2)*s1(i+1)^2/(2*h*h);
A(i , i+MM)=-(r2*s2(j+1))/(2*h)-(vol2^2)*s2(j+1)^2/(2*h*h);
b ( i ) = ( - ( r1 * s1 ( i + 1 ) ) / ( 2 * h ) - ( vol1 ^ 2 ) * s1 ( i + 1 ) ^ 2 / ( 2 * h * h ) ) * Smax...
+((r2*s2 ( j +1))/(2*h)-(vol2 ^2)* s2 ( j +1)^2/(2*h*h))* s1 ( i +1);
% interior nodes 
for j=2:(MM-1) 
    for i=2:(MM-1)
k=MM*(j-1)+i ;
A(k , k)=( vol1 ^2)* s1 ( i +1)^2/(h*h)+( vol2 ^2)*( s2 ( j +1)^2)/(h*h)+r ; 
A ( k , k +1)=-( r1 * s1 ( i + 1 ) ) / ( 2 * h ) - ( vol1 ^ 2 ) * s1 ( i + 1 ) ^ 2 / ( 2 * h * h ) ; 
A(k,k-1)=(r1*s1( i +1))/(2*h)-(vol1^2)*s1( i +1)^2/(2*h*h);
A ( k , k +MM) = - ( r2 * s2 ( j + 1 ) ) / ( 2 * h ) - ( vol2 ^ 2 ) * s2 ( j + 1 ) ^ 2 / ( 2 * h * h ) ;
A ( k , k -MM) = ( r2 * s2 ( j + 1 ) ) / ( 2 * h ) - ( vol2 ^ 2 ) * s2 ( j + 1 ) ^ 2 / ( 2 * h * h ) ;
    end
end
% using the boundary condition: v(0,s2,t)=s2 
i =1;
for j=2:(MM-1)
k = (MM* ( j - 1 ) + 1 ) ;
A(k , k)=( vol1 ^2)* s1 ( i +1)^2/(h*h)+( vol2 ^2)*( s2 ( j +1)^2)/(h*h)+r ; 
A ( k , k +1)=-( r1 * s1 ( i + 1 ) ) / ( 2 * h ) - ( vol1 ^ 2 ) * s1 ( i + 1 ) ^ 2 / ( 2 * h * h ) ;
A ( k , k +MM) = - ( r2 * s2 ( j + 1 ) ) / ( 2 * h ) - ( vol2 ^ 2 ) * s2 ( j + 1 ) ^ 2 / ( 2 * h * h ) ;
A ( k , k -MM) = ( r2 * s2 ( j + 1 ) ) / ( 2 * h ) - ( vol2 ^ 2 ) * s2 ( j + 1 ) ^ 2 / ( 2 * h * h ) ;
b(k)=(( r1*s1 ( i +1))/(2*h)-(vol1 ^2)* s1 ( i +1)^2/(2*h*h))* s2 ( j +1); 
end
% using the boundary condition:v(INF,s2,t)=Smax 
i =MM ;
for j=2:(MM-1)
k=MM* ( j -1)+MM;
A(k , k)=( vol1 ^2)* s1 ( i +1)^2/(h*h)+( vol2 ^2)*( s2 ( j +1)^2)/(h*h)+r ;
A(k,k+1)=(r1*s1( i +1))/(2*h)-(vol1^2)*s1( i +1)^2/(2*h*h);
A ( k , k +MM) = - ( r2 * s2 ( j + 1 ) ) / ( 2 * h ) - ( vol2 ^ 2 ) * s2 ( j + 1 ) ^ 2 / ( 2 * h * h ) ;
A ( k , k -MM) = ( r2 * s2 ( j + 1 ) ) / ( 2 * h ) - ( vol2 ^ 2 ) * s2 ( j + 1 ) ^ 2 / ( 2 * h * h ) ;
b(k)=(-(r1*s1 ( i +1))/(2*h)-(vol1 ^2)* s1 ( i +1)^2/(2*h*h))* s2 ( j +1); 
end
% using the boundary conditions: v(0,s2,t)=s2&v(s1,INF,t)=Smax 
i = 1 ; j =MM; k=MM* ( j - 1 ) + 1 ;
A(k , k)=( vol1 ^2)* s1 ( i +1)^2/(h*h)+( vol2 ^2)*( s2 ( j +1)^2)/(h*h)+r ; 
A ( k , k +1)=-( r1 * s1 ( i + 1 ) ) / ( 2 * h ) - ( vol1 ^ 2 ) * s1 ( i + 1 ) ^ 2 / ( 2 * h * h ) ;
A ( k , k -MM) = ( r2 * s2 ( j + 1 ) ) / ( 2 * h ) - ( vol2 ^ 2 ) * s2 ( j + 1 ) ^ 2 / ( 2 * h * h ) ;
b(k)=((r1*s1(i+1))/(2*h)-(vol1^2)*s1(i+1)^2/(2*h*h))*s2(j +1)... 
    +(-(r2*s2 ( j +1))/(2*h)-(vol2 ^2)* s2 ( j +1)^2/(2*h*h))*Smax;
    

% using the boundary condition : v(s1 ,INF, t)=Smax 
j=MM; 
for i =2:(MM-1)
k=MM*(j-1)+i ;
A(k , k)=( vol1 ^2)* s1 ( i +1)^2/(h*h)+( vol2 ^2)*( s2 ( j +1)^2)/(h*h)+r ; 
A ( k , k +1)=-( r1 * s1 ( i + 1 ) ) / ( 2 * h ) - ( vol1 ^ 2 ) * s1 ( i + 1 ) ^ 2 / ( 2 * h * h ) ;
A ( k , k -MM) = ( r2 * s2 ( j + 1 ) ) / ( 2 * h ) - ( vol2 ^ 2 ) * s2 ( j + 1 ) ^ 2 / ( 2 * h * h ) ; 
A(k,k-1)=(r1*s1( i +1))/(2*h)-(vol1^2)*s1( i +1)^2/(2*h*h);
b ( k ) = ( - ( r2 * s2 ( j + 1 ) ) / ( 2 * h ) - ( vol2 ^ 2 ) * s2 ( j + 1 ) ^ 2 / ( 2 * h * h ) ) * Smax ;
end
% using the boundayr conditions : v(s1 ,INF, t)=Smax&v(s2 ,INF, t)=Smax i =MM ; j =MM ; k =MM * ( j - 1 ) +MM ;
A(k , k)=( vol1 ^2)* s1 ( i +1)^2/(h*h)+( vol2 ^2)*( s2 ( j +1)^2)/(h*h)+r ; A(k,k-1)=(r1*s1( i +1))/(2*h)-(vol1^2)*s1( i +1)^2/(2*h*h);
A ( k , k -MM) = ( r2 * s2 ( j + 1 ) ) / ( 2 * h ) - ( vol2 ^ 2 ) * s2 ( j + 1 ) ^ 2 / ( 2 * h * h ) ;
b ( k ) = ( - ( r1 * s1 ( i + 1 ) ) / ( 2 * h ) - ( vol1 ^ 2 ) * s1 ( i + 1 ) ^ 2 / ( 2 * h * h ) ) * Smax ...
+(-(r2*s2 ( j +1))/(2*h)-(vol2 ^2)* s2 ( j +1)^2/(2*h*h))*Smax;
% Solve U(t)
% Use the theta-method
I=eye(MM^2,MM^2); theta=1/2; U = zeros(MM^2,N); % the initial values on the interior nodes
for i=1:MM
    for j=1:MM
    kk =MM * ( i - 1 ) + j ; 
    U(kk,N)=V_T(i+1,j+1);
    end
end
%calculate the U with time decreasing from T to 0 
for n=(N-1):-1:1
U(: ,n)=inv(I+(1-theta)*timestep.*A)... 
    *((I-theta*timestep.*A)*U(: ,n+1)+timestep.*b);
% American Condition 
    for i=2:(M-1)


        for j=2:(M-1)
            if U((i-2)*(M-2)+(j-1),n)<max((i-1)*stockstep ,(j-1)*stockstep)
            U(( i -2)*(M-2)+(j -1),n)=max(( i -1)*stockstep ,( j -1)*stockstep ); 
            end
        end
    end
end
% Put values back to the matrix V 

for k = 1:T
V=zeros(M,M) ;
for i=2:(M-1)
    for j=2:(M-1)
    V ( i , j ) = U ( ( i - 2 ) * ( M- 2 ) + ( j - 1 ) , k ) ;
    end
end
V(:,1)=s2 (:); 
V(: ,M)=Smax;
V(1,:)=s1 (:); 
V(M,:)=Smax;
Ms = 21;

surf(S1( 1 : Ms , 1 : Ms ) , S2 ( 1 : Ms , 1 : Ms ) ,V( 1 : Ms , 1 : Ms ) )
axis([0 10 0 10 0 12])
%hold off
pause(0.3)
end







