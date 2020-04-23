function [Hasil] = Fibonacci_Math_Neg (Urutan)      %Membuat fungsi untuk fibonacci menggunakan rumus matematika

    tic;                                            %Memulai perhitungan waktu eksekusi program (dari tic hingga toc)

    Urutan = Urutan - 1;                            %Urutan dikurangi 1
    GR_Neg = 1.618;                                 %Golden Ratio Negative bernilai -0.618
    Hasil = round(((GR_Neg/(sqrt(5)))*(GR_Neg^Urutan)) + ((1/(GR_Neg*(sqrt(5)))) * (-GR_Neg^(-Urutan))));   %Rumus untuk Fibonacci dengan Golden Ratio

    toc                                             %Mengakhiri perhitungan waktu eksekusi program

end                                                 %Akhir dari fungsi