%3.2.1 Decode the UPC from a Scanned Image
% Rupinderjit Virk 11/30/19 EE 112
bcode= imread('HP110v3.png');%Barcode Image loading
xn = bcode(250, :);% row 250 was chosen randomly to process the barcode

%The following for loop creates a threshold signal with %zeros and ones where one represents an edge.
for m =1:949
if (abs(yn(1,m)) < 50) % Threshold value: ? =50
dn(1,m) = 0;
else
dn(1,m) = 1;
end
end
ln = find (dn);
stem (ln)

% part d
delta_n = conv(ln,difh);
subplot(211), stem (ln)
subplot(212), stem(delta_n) 
subplot(211), stem (ln)
subplot(212), stem(delta_n)

% part f

sum = 0;
for n = 7:65
sum = sum + delta_n(1,n);
end
divider = sum / 95; % divider = 7.8947368421052

% part g
for n = 1:71
delta_n(1,n) = delta_n(1,n)/divider;
for n=1:71
if (delta_n(1,n) >0.5 && delta_n(1, n) <= 1.5)
delta_n(1,n) = 1;
end
if (delta_n(1,n) >1.5 && delta_n(1, n) <= 2.5)
delta_n(1,n) = 2;
end
if (delta_n(1,n) >2.5 && delta_n(1, n) <= 3.5)
delta_n(1,n) = 3;
end
if (delta_n(1,n) >3.5 && delta_n(1, n) <= 4.5)
delta_n(1,n) = 4;
end
end
end

