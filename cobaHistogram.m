%melakukan count sort
x = imread('lisa.jpg');
list_histogram = zeros(256,1);
[tinggi, lebar, panjang]=size(x);

for i=0 : 255
    jumlah_warna = 0;
    for j=1 : tinggi
        for k=1 : lebar
            if i==x(j,k,1)
                jumlah_warna = jumlah_warna + 1;
                list_histogram(i+1) = jumlah_warna;
            end
            if i==x(j,k,2)
                jumlah_warna = jumlah_warna + 1;
                list_histogram(i+1) = jumlah_warna;
            end
            if i==x(j,k,3)
                jumlah_warna = jumlah_warna + 1;
                list_histogram(i+1) = jumlah_warna;
            end
        end
    end
end

Horis = (0:255)';
bar(Horis,list_histogram);