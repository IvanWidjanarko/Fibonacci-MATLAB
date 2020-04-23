function [Hasil] = Fibonacci_Math_Pos (Urutan)      %Membuat fungsi untuk fibonacci menggunakan rumus matematika

    tic;                                            %Memulai perhitungan waktu eksekusi program

    Urutan = Urutan - 1;                            %Urutan dikurangi 1
    GR_Pos = 1.618;                                 %Golden Ratio Positive bernilai 1.618
    Hasil = round(((GR_Pos/(sqrt(5)))*(GR_Pos^Urutan)) + ((1/(GR_Pos*(sqrt(5)))) * (-GR_Pos^(-Urutan))));   %Rumus untuk Fibonacci dengan Golden Ratio

    toc                                             %Mengakhiri perhitungan waktu eksekusi program

end                                                 %Akhir dari fungsi