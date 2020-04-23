function [Hasil] = Fibonacci (Urutan)           %Membuat fungsi untuk fibonacci menggunakan for-loop

    tic;                                        %Memulai perhitungan waktu eksekusi program
    m = 0; n = 1; Hasil = 1;                    %Menset nilai variabel m = 0, n = 1, Hasil = 1

        for i = 1:(Urutan-1)                    %Memulai for-loop dari 1 hingga Urutan-1
            Hasil = round(m + n);               %m + n dan hasilnya diletakkan di Hasil
            m = n;                              %Nilai n dipindahkan ke m 
            n = Hasil;                          %Nilai Hasil dipindahkan ke n
        end                                     %Akhir dari for-loop

    toc                                         %Mengakhiri perhitungan waktu eksekusi program

end                                             %Akhir dari fungsi