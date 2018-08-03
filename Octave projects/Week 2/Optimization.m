options=optimset('GradObj','on','MaxIter','100');
initialtheta=zeros(2,1);
function [jval,gradient]=costfunction(theta)
  jval=(theta(1)-5)^2+(theta(2)-5)^2;
  gradient=zeros(2,1);
  gradient(1)=2*(theta(1)-5);
  gradient(2)=2*(theta(2)-5);
end
[opttheta,functionval,exitflag]=fminunc(@costfunction,initialtheta,options)
