clc
clear all
close all

%Slice
%[x,y,z] = meshgrid(-2:.25:2,-2:.25:2,-2:.25:2);
%v=9*x.^2+4*y.^2; 
%xslice = [0,0,1]; yslice = [0,0,1]; zslice = [0,0.5,1];
%slice(x,y,z,v,xslice,yslice,zslice)  
                                                                      
%Surf
%[x,y] = meshgrid(-2:.25:2,-2:.25:2);
%z =(9*x.^2+4*y.^2);   
%surf(z)
                        
%Mesh
%[x,y] = meshgrid(-2:.25:2,-2:.25:2);
%z =(9*x.^2+4*y.^2);   
%mesh(z)
 
%Contour
[x,y] = meshgrid(-2:.25:2,-2:.25:2);
z =(9*x.^2+4*y.^2);   
contour(z)
                                %surf() or  mesh() or contour() or slice()

xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')