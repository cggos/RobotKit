num1=[1]; den1=[1 1];   %1/s+1�ķ��Ӻͷ�ĸ����ʽ
num2=[1]; den2=[1 2];
num3=[1 2]; den3=[1 4 5];
num4=[1]; den4=[1 3];
[nump,denp]=parallel(num2,den2,num3,den3);%�����ݺ�������
[nums,dens]=series(num1,den1,nump,denp);%�����ݺ�������
[num,den]=feedback(nums,dens,num4,den4,-1);%����������
printsys(num,den)                   %����Ļ�ϴ�ӡϵͳ