%���磺����������̬�� 
R0=rotz(-1)*roty(-1);
R1=rotz(1)*roty(1);
%�õ��ȼۺ��-����-ƫ����
rpy0=tr2rpy(R0) ; 
rpy1=tr2rpy(R1);
%��50��ʱ�䲽������֮������һ���켣��
rpy=mtraj(@tpoly,rpy0,rpy1,50);
%������ʾ
tranimate(rpy2tr(rpy));