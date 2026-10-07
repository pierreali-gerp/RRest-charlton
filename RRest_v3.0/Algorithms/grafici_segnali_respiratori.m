% da N_int_respSigs: importare solo struct ekg_EHF
% figure ("Name", 'ECG');
% plot(ekg_EHF.t, ekg_EHF.v) %plotting ecg

load('Component_Data_Filtered/1_respSigs.mat'); % inserire numero soggetto d'interesse

%   feature-based signals
figure("Name", 'segnale resp. am');
plot(ekg_ELF_RSlin_FMeam_FPt_RDtGC_EHF.t, ekg_ELF_RSlin_FMeam_FPt_RDtGC_EHF.v, 'b'); 
hold on;
plot(filt_ekg_ELF_RSlin_FMeam_FPt_RDtGC_EHF.t, filt_ekg_ELF_RSlin_FMeam_FPt_RDtGC_EHF.v, 'r');
legend('Originale', 'Filtrato');

figure("Name", 'segnale resp. bw');
plot(ekg_ELF_RSlin_FMebw_FPt_RDtGC_EHF.t, ekg_ELF_RSlin_FMebw_FPt_RDtGC_EHF.v);
hold on;
plot(filt_ekg_ELF_RSlin_FMebw_FPt_RDtGC_EHF.t, filt_ekg_ELF_RSlin_FMebw_FPt_RDtGC_EHF.v, 'r');
legend('Originale', 'Filtrato');

figure("Name", 'segnale resp. fm');
plot(ekg_ELF_RSlin_FMefm_FPt_RDtGC_EHF.t, ekg_ELF_RSlin_FMefm_FPt_RDtGC_EHF.v);
hold on;
plot(filt_ekg_ELF_RSlin_FMefm_FPt_RDtGC_EHF.t, filt_ekg_ELF_RSlin_FMefm_FPt_RDtGC_EHF.v, 'r');
legend('Originale', 'Filtrato');

figure("Name", 'segnale resp. pk');
plot(ekg_ELF_RSlin_FMepk_FPt_RDtGC_EHF.t, ekg_ELF_RSlin_FMepk_FPt_RDtGC_EHF.v);
hold on;
plot(filt_ekg_ELF_RSlin_FMepk_FPt_RDtGC_EHF.t, filt_ekg_ELF_RSlin_FMepk_FPt_RDtGC_EHF.v, 'r');
legend('Originale', 'Filtrato');


figure("Name", 'segnale resp. qrsA');
plot(ekg_ELF_RSlin_FMeqrsA_FPt_RDtGC_EHF.t, ekg_ELF_RSlin_FMeqrsA_FPt_RDtGC_EHF.v);
hold on;
plot(filt_ekg_ELF_RSlin_FMeqrsA_FPt_RDtGC_EHF.t, filt_ekg_ELF_RSlin_FMeqrsA_FPt_RDtGC_EHF.v, 'r');
legend('Originale', 'Filtrato');


%   filter-based signals
figure("Name", 'segnale resp. BFi');
plot(ekg_flt_BFi.t, ekg_flt_BFi.v);
hold on;
plot(filt_ekg_flt_BFi.t, filt_ekg_flt_BFi.v);
legend('Originale', 'Filtrato');


% %% FILTRAGGIO
% filtro_am = designfilt('bandpassiir', 'StopbandFrequency1', 0.004, ...
%     'PassbandFrequency1', 0.1, 'PassbandFrequency2', 0.8899, ...
%     'StopbandFrequency2', 1.2, 'SampleRate', ekg_ELF_RSlin_FMeam_FPt_RDtGC_EHF.fs);
% % figure;
% % fvtool(filtro_am);
% seg_filt = filtfilt(filtro_am, ekg_ELF_RSlin_FMeam_FPt_RDtGC_EHF.v);
% figure;
% plot(ekg_ELF_RSlin_FMeam_FPt_RDtGC_EHF.t, ...
%     detrend(ekg_ELF_RSlin_FMeam_FPt_RDtGC_EHF.v, 0), ...
%     ekg_ELF_RSlin_FMeam_FPt_RDtGC_EHF.t, seg_filt);
