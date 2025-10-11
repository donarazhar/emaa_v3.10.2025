<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\SuratAsal;
use App\Models\KursusGuru;
use App\Models\KasKecilAas;
use App\Models\KursusMurid;
use App\Models\LayananImam;
use App\Models\SuratKategori;
use App\Models\InventarisMerk;
use Illuminate\Database\Seeder;
use App\Models\InventarisBagian;
use App\Models\InventarisSatuan;
use App\Models\InventarisSuplier;
use App\Models\KasKecilTransaksi;
use App\Models\InventarisKategori;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use App\Models\KasKecilMatanggaran;
use Illuminate\Support\Facades\Hash;
use App\Models\LayananJenisKonsultasi;
use Spatie\Permission\Models\Permission;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        $faker = \Faker\Factory::create('id_ID'); // Menggunakan bahasa Indonesia

        $adminUser = User::updateOrCreate(
            ['id' => 1],
            [
                'name' => 'Test User',
                'email' => 'admin@admin.com',
                'password' => Hash::make('1234'),
                'email_verified_at' => now(),
            ]
        );

        $adminUser = User::find(1);
        if (!$adminUser) {
            echo "Error: User with ID 1 not found after create/update.\n";
            return;
        }

        $exists = DB::table('model_has_roles')
            ->where('role_id', 1)
            ->where('model_type', $adminUser->getMorphClass())
            ->where('model_id', 1)
            ->exists();

        if (!$exists) {
            DB::table('model_has_roles')->insert([
                'role_id' => 1,
                'model_type' => $adminUser->getMorphClass(),
                'model_id' => 1,
            ]);
            echo "Inserted data into model_has_roles for User ID 1 and Role ID 1.\n";
        } else {
            echo "Entry already exists in model_has_roles for User ID 1 and Role ID 1.\n";
        }


        SuratAsal::create([
            'nama_asal_surat' => 'Sekre YPIA',
            'keterangan_asal_surat' => 'Surat berasal dari Sekretariat YPIA'
        ]);

        SuratKategori::create([
            'nama_kategori' => 'Biasa',
            'keterangan_kategori' => 'Surat bersifat Biasa'
        ]);

        LayananImam::create([
            'nama_imam' => 'Haji Mukhtar Ibnu',
            'nohp_imam' => '081212345',
            'keterangan' => 'Imam rawatib MAA'
        ]);

        LayananJenisKonsultasi::create([
            'nama_jenis_konsultasi' => 'Konsultasi Agama',
            'deskripsi' => 'Layanan mengenai agama islam dasar'
        ]);

        $kasKecilAas = KasKecilAas::create([
            'kode_aas' => 'AAS001',
            'nama_aas' => 'Konsumsi',
            'status' => 'debit',
            'kategori' => 'pembentukan',
        ]);

        KasKecilMatanggaran::create([
            'kode_matanggaran' => '1.1.1',
            'kode_aas' => $kasKecilAas->kode_aas,
            'saldo' => 1000000,
        ]);

        KasKecilTransaksi::factory()->create([
            'perincian' => 'Pembentukan Kas Kecil',
            'pengisian_id' => null,
            'jumlah' => 25000000,
            'kategori' => 'pembentukan',
            'tgl_transaksi' => '2024-01-01',
            'kode_matanggaran' => '1.1.1',
            'foto_kaskecil' => null,
            'created_at' => '2024-01-11 11:24:34',
            'updated_at' => '2024-01-11 11:24:34',
        ]);

        InventarisBagian::create([
            'nama_bagian' => 'Ruang Kantor',
            'keterangan_bagian' => 'Bagian area ruang kantor saja'
        ]);

        InventarisKategori::create([
            'nama_kategori' => 'Barang Cepat',
            'keterangan_kategori' => 'Barang yang cepat rusak dan jangka pendek'
        ]);

        InventarisMerk::create([
            'nama_merk' => 'Samsung',
            'keterangan_merk' => 'Produk merek perusahaan samsung'
        ]);

        InventarisSatuan::create([
            'nama_satuan' => 'KG',
            'keterangan_satuan' => 'Satuan kilogram'
        ]);

        InventarisSuplier::create([
            'nama_suplier' => 'PT. Panasonic CCTV',
            'alamat_suplier' => 'Jalan Daan Moogot, Jakbar',
            'kontak_suplier' => '08123456789',
            'email_suplier' => 'franklindroosevelt@altostrat.com',
            'keterangan_suplier' => 'Suplier perusahaan Panasonic CCTV'
        ]);

        KursusMurid::create([
            'nama' => 'Donar Azhar',
            'alamat' => 'Jalan haji umar Rt. 007, Petukangan Selatan',
            'jenkel' => 'laki-laki',
            'email' => 'donarazhar@gmail.com',
            'nomor_telepon' => '08123456789',
            'tanggal' => now(),
            'foto' => null
        ]);

        KursusGuru::create([
            'nama' => 'Haji Jauhari',
            'alamat' => 'Jalan Ragunan Raya, Jakarta',
            'jenkel' => 'laki-laki',
            'email' => 'haji@gmail.com',
            'nomor_telepon' => '08123456789',
            'bidang_keahlian' => 'Tafsir Quran',
            'sejak' => now(),
            'foto' => null
        ]);
    }
}
