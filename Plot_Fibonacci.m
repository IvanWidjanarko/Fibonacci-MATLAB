function Plot_Fibonacci (Urutan)                                    %Membuat fungsi untuk plot grafik fibonacci menggunakan for-loop

    Array_Waktu = [];                                               %Mendefinisikan Array_Waktu
    Array_Hasil = [];                                               %Mendefinisikan Array_Hasil

    for i = 1:Urutan                                                %Memulai for-loop dari 1 hingga Urutan
        tic;                                                        %Memulai perhitungan waktu eksekusi program (dari tic hingga toc)
        m = 0; n = 1; Hasil = 1;                                    %Menset nilai variabel m = 0, n = 1, Hasil = 1

        for i = 1:(i-1)                                             %Memulai for-loop dari 1 hingga i-1
            Hasil = m + n;                                          %m + n dan hasilnya diletakkan di Hasil
            m = n;                                                  %Nilai n dipindahkan ke m 
            n = Hasil;                                              %Nilai Hasil dipindahkan ke n
        end                                                         %Akhir dari for-loop pertama

        Waktu = toc;                                                %Mengakhiri perhitungan waktu eksekusi program
        Array_Waktu = [Array_Waktu, Waktu];                         %Mengisi Array_Waktu
        Array_Hasil = [Array_Hasil, i-1];                           %Mengisi Array_Hasil
    
    end                                                             %Akhir dari for-loop kedua
    
    Array_Hasil = [Array_Hasil, i];                                 %Mengisi Array_Hasil
    plot (Array_Hasil, Array_Waktu, 'r')                                 %Membuat grafik waktu vs fibonacci
    title ('Waktu Eksekusi Program vs Deret Fibonacci (For-Loop)')  %Judul grafik
    ylabel ('Waktu Eksekusi Program')                               %Legenda sumbu y
    xlabel ('Deret Fibonacci')                                      %Legenda sumbu x
    
end                                                                 %Akhir dari fungsi