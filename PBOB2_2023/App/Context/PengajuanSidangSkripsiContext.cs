using Npgsql;
using NpgsqlTypes;
using PBOB2_2023.App.Core;
using PBOB2_2023.App.Model;
using System.Data;

namespace PBOB2_2023.App.Context
{
    internal class PengajuanSidangSkripsiContext : DatabaseWrapper
    {
        private static string table = "pengajuan_sidang_skripsi";

        public static DataTable all()
        {
            string query = $@"SELECT * FROM {table}";
            DataTable dataPengajuanSidangSkripsi = queryExecutor(query);
            return dataPengajuanSidangSkripsi;
        }

        public static DataTable show(int id)
        {
            string query = $"SELECT * FROM {table} WHERE id_pengajuan_sidang_skripsi = @id_sidang_skripsi";
            NpgsqlParameter[] parameters =
            {
                new NpgsqlParameter("@id_sidang_skripsi", NpgsqlDbType.Integer){Value = id},
            };
            DataTable dataPengajuanSidangSkripsi = queryExecutor(query, parameters);
            return dataPengajuanSidangSkripsi;
        }

        public static void store(M_PengajuanSidangSkripsi pengajuanSidangSkripsiBaru)
        {
            string query = $"INSERT INTO {table} (nama_mahasiswa, nim, prodi, judul, file_skripsi, transkrip_nilai, bukti_acc, bukti_orisinalitas, status, pembimbing1, pembimbing2, no_telepon) VALUES (@nama_mahasiswa, @nim, @prodi, @judul, @file_skripsi, @transkrip_nilai, @bukti_acc, @bukti_orisinalitas, @status, @pembimbing1, @pembimbing2, @no_telepon)";
            NpgsqlParameter[] parameters =
            {
                new NpgsqlParameter("@nama_mahasiswa", NpgsqlDbType.Varchar) { Value = pengajuanSidangSkripsiBaru.nama_mahasiswa },
                new NpgsqlParameter("@nim", NpgsqlDbType.Varchar) { Value = pengajuanSidangSkripsiBaru.nim },
                new NpgsqlParameter("@prodi", NpgsqlDbType.Varchar) { Value = pengajuanSidangSkripsiBaru.prodi },
                new NpgsqlParameter("@judul", NpgsqlDbType.Varchar) { Value = pengajuanSidangSkripsiBaru.judul },
                new NpgsqlParameter("@file_skripsi", NpgsqlDbType.Varchar) { Value = pengajuanSidangSkripsiBaru.file_skripsi },
                new NpgsqlParameter("@transkrip_nilai", NpgsqlDbType.Varchar) { Value = pengajuanSidangSkripsiBaru.transkrip_nilai },
                new NpgsqlParameter("@bukti_acc", NpgsqlDbType.Varchar) { Value = pengajuanSidangSkripsiBaru.bukti_acc },
                new NpgsqlParameter("@bukti_orisinalitas", NpgsqlDbType.Varchar) { Value = pengajuanSidangSkripsiBaru.bukti_orisinalitas },
                new NpgsqlParameter("@status", NpgsqlDbType.Varchar) { Value = pengajuanSidangSkripsiBaru.status },
                new NpgsqlParameter("@pembimbing1", NpgsqlDbType.Varchar) { Value = pengajuanSidangSkripsiBaru.pembimbing1 },
                new NpgsqlParameter("@pembimbing2", NpgsqlDbType.Varchar) { Value = pengajuanSidangSkripsiBaru.pembimbing2 },
                new NpgsqlParameter("@no_telepon", NpgsqlDbType.Varchar) { Value = pengajuanSidangSkripsiBaru.no_telepon },
            };
            commandExecutor(query, parameters);
        }

        public static void ubahPengajuan(int id_pengajuan_sidang, string nama, string nim, string judul, string transkrip_nilai, string file_skripsi, string bukti_orisinalitas, string bukti_acc, string pembimbing1, string pembimbing2, string prodi1, string status, string no_telepon)
        {
            string query = $"UPDATE {table} SET nama_mahasiswa = '{nama}', nim = '{nim}', judul = '{judul}', transkrip_nilai = '{transkrip_nilai}', file_skripsi = '{file_skripsi}', bukti_orisinalitas = '{bukti_orisinalitas}', bukti_acc = '{bukti_acc}', pembimbing1 = '{pembimbing1}', pembimbing2 = '{pembimbing2}', prodi = '{prodi1}', status = '{status}', no_telepon = '{no_telepon}' WHERE id_pengajuan_sidang = {id_pengajuan_sidang}";
            NpgsqlParameter[] parameters =
            {
                new NpgsqlParameter("@id_jadwal_sidang", NpgsqlDbType.Integer) { Value = id_pengajuan_sidang }
            };
            commandExecutor(query, parameters);

        }
        public static DataTable ArsipJudul(string status)
        {
            string query = $"SELECT nama_mahasiswa, nim, prodi, judul, pembimbing1, pembimbing2 from {table} WHERE status = '{status}' ORDER BY id_pengajuan_sidang";
            DataTable dataArsipJudul = queryExecutor(query);
            return dataArsipJudul;
        }
        public static DataTable Search(string keyword)
        {
            string query = $"SELECT * FROM {table} WHERE nama_mahasiswa ILIKE '%{keyword}%' OR nim ILIKE '%{keyword}%' OR judul ILIKE '%{keyword}%' OR pembimbing1 ILIKE '%{keyword}%' OR pembimbing2 ILIKE '%{keyword}%'";
            DataTable searchData = queryExecutor(query);
            return searchData;
        }
    }
}