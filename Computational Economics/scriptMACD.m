%�� �������� ��� ��������.
capital=100000;
disp(['�� �������� �������� ��� ������ �����: ' , num2str(capital) , ' ��������. '])
disp(' ')

%�� ��������� �������� ��� ���� �� �������� ��� ����� ��� ���������� �����:
available=(10/100)*capital;
disp(['��� �� �������� ��� �������� �� �������� ����: ' , num2str(available),  ' ��������. '])
disp(' ')

 
%������ �� �������� ��� ���������� ��� �� ���� ��� ����� ��� ������ ����
%����� ��� ��������� MACD  ��� ��� ����� ����������� ��� ������� microsoft.

%��� ����� ��� ������� ����������� ��� ��� ������ MACD ��� ������ ��� ���
%������:
table_macd=macd(msft(:,6));

%��� ����� ��� ��� �� ���� ������� �� ������� ��� �� �������� ��� ������ ��� ��� ������
table_withValuesOfClosedStocks=msft(:,6);

%� ���� ��� trigger line ����� ��� �� �� �����,���� ������������ ��� ���
%��������� Figure1

trigger_line=0;


%���� ���� ��� � ������� macd ��� ��� ������� ����� ����������� ��� ��� ���� ��� trigger line...�������

%�� ����������� ��������� ���  � ������� ����� ���������� ��� ��� ���� ��� trigger line....������

%�� ����� ������� �� ������� �� �������� ������ ��� ��� ��������� 
% randi() ��� ��� ����� �� matlab.��� �������� ��� � �������� ��� �������
% ���� ������������ �� ���������� ��� 1-100 ������� ��� ����.


%���������� ����������� ��� randi()
%  example=randi([1,100],1,1);

for i=1:10
    
    totalNumberOfStocks=randi([1,100],1,1);%�������� ��� ������� ��� �� ������� � �� �������.
    
    disp(['�� ������� � �� �������: ' , num2str(totalNumberOfStocks),  ' �������. '])
    disp(' ')

    
    whichStock=randi([1,251],1,1);%������� ������ ��� ������ ��� �� �������� 1-251...���� ����� ��� �� �������� �� ����� ��� ������� ��� ���� ��� �������.
    
    priceOfStocks=table_withValuesOfClosedStocks(whichStock)*totalNumberOfStocks;%���� ������� ���� ������������.
    
    disp(['���� ', num2str(i), '� ���������..'])

    if table_macd(whichStock)>trigger_line
        %�������
        available=available-(priceOfStocks);
        disp(['�������...����� �� ��������� �������� ��� �� ������� ��� �� ������ ��� : ', num2str(available), ' ��������. '])
        disp(' ')

        
    elseif table_macd(whichStock)<trigger_line
        %������
        available=available+(priceOfStocks);
        disp(['������...����� �� ��������� �������� ��� �� ������� ��� �� ������ ��� : ', num2str(available), ' ��������. '])
        disp(' ')


    else
        %�� ��������� ����(available) ��������� ������� ���� ��������� ���
        %���� ��� ���� NaN(Not a Number) ��� ��� ������ table_macd
        available=available+0;
        disp(['�� ��������� ���� ��������� ������� ��� : ', num2str(available),  ' ��������. '])
        disp(' ')


    end
    
    
    
end


    disp(' ')
    disp(' ')
    disp(['������ ���� ��� ��� ������������� ��� ���� 10000 �������� ��� ���������....���� ���: ' , num2str(available), ' �������� ��������� ��� ���������� ��������'])
    disp(' ')
    capital=90000+available;%�� ������ ���� ��� ��������� ��� ���� ��� 10 �������������.
    
    disp(['�� ������ �������� ���� ��� ��������� ��� ���� ��� 10 ������������� ����� :' ,num2str(capital), ' ��������. ']) 
    disp(' ')

    
    
    if (capital>100000)
        disp(['��� ����� ��� ������������� ��� ������ : ', num2str(capital-100000), ' ��������. '])
        disp(' ')

    elseif(capital<100000)
        disp(['��� ����� ��� ������������� ��� ����� : ', num2str(100000-capital), ' ��������. '])
        disp(' ')


    else
        fprintf('�� �������� ��� ��� ���� �������')
        disp(' ')

    end 