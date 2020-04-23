function Plot_Fibonacci_Math_Pos (Urutan)                                               %Membuat fungsi untuk plot grafik fibonacci menggunakan rumus matematika

    Array_Waktu = [];                                                                   %Mendefinisikan Array_Waktu
    Array_Hasil = [];                                                                   %Mendefinisikan Array_Hasil

    for i = 1:Urutan                                                                    %Memulai for-loop dari 1 hingga Urutan
        tic;                                                                            %Memulai perhitungan waktu eksekusi program (dari tic hingga toc)
        
        i = i - 1;                                                                      %i dikurangi 1
        GR_Pos = 1.618;                                                                 %Golden Ratio Positive bernilai 1.618
        Hasil = round(((GR_Pos/(sqrt(5)))*(GR_Pos^i)) + ((1/(GR_Pos*(sqrt(5)))) * (-GR_Pos^(-i))));   %Rumus untuk Fibonacci dengan Golden Ratio

        Waktu = toc;                                                                    %Mengakhiri perhitungan waktu eksekusi program
        Array_Waktu = [Array_Waktu, Waktu];                                             %Mengisi Array_Waktu
        Array_Hasil = [Array_Hasil, i+1];                                               %Mengisi Array_Hasil
    
    end                                                                                 %Akhir dari for-loop pertama
    
    plot (Array_Hasil, Array_Waktu, 'g')                                                     %Membuat grafik waktu vs fibonacci
    title ('Waktu Eksekusi Program vs Deret Fibonacci (Rumus Matematika GR Positif)')   %Judul grafik
    ylabel ('Waktu Eksekusi Program')                                                   %Legenda sumbu y
    xlabel ('Deret Fibonacci')                                                          %Legenda sumbu x
    
end                                                                                     %Akhir dari fungsi