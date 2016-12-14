<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Member extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        if (!($this->session->has_userdata('Status'))) {
            redirect('login');
        }
        $this->load->model('barang_model', 'bm');
        $this->load->model('Log_model');
        $this->load->model('m_login');
    }

    public function index()
    {

    }

    /**public function listReport()
    {
    $report = $this->jrm->getReport();
    $user = $this->m_login->ambil_user($this->session->userdata('uname'));
    $data = [
    'report' => $report,
    'user' => $user,
    ];
    $this->template->load('template', 'admin/list-dosen-report_view', $data);
    }

    public function editReport($id)
    {
    $jadwal = $this->jdm->getReport($id);
    $user = $this->m_login->ambil_user($this->session->userdata('uname'));
    $data = [
    'jadwal' => $jadwal,
    'user' => $user,
    ];
    $this->template->load('template', 'admin/update-jadwal-report_view', $data);
    }

     **/



    public function listBarang()
    {
        $barang = $this->bm->get_all();
        $user = $this->m_login->ambil_user($this->session->userdata('uname'));
        $data = [
            'barang' => $barang,
            'user' => $user,
        ];

        $data['user'] = $this->m_login->ambil_user($this->session->userdata('uname'));
        $this->template->load('templateSuperAdmin', 'barang/list-barang', $data);
    }

    public function insertBarang()
    {
        $user = $this->m_login->ambil_user($this->session->userdata('uname'));
        $data = [
            'user' => $user,
        ];
        $this->template->load('templateSuperAdmin', 'barang/insert-barang', $data);
    }

    public function storeBarang()
    {
        $barang = [
            'id_barang' => $this->input->post('id_barang'),
            'nama_barang' => $this->input->post('nama_barang'),
            'kategori' => $this->input->post('kategori'),
            'stok' => $this->input->post('stok'),
            'kode_rak' => $this->input->post('kode_rak'),
            'harga' => $this->input->post('harga'),
        ];
        if ($this->bm->insert($barang)) {

            $User = $this->session->userdata('uname');
            $id_user = $this->session->userdata('id_user');
            $Log = [
                'ID_User' => $id_user,
                'Tanggal' => date('Y-m-d H:i:s'),
                'Aktifitas' => "Insert data barang oleh " . $User,
            ];
            if ($this->Log_model->insertLog($Log)) {
                redirect('admin/listBarang');
            } else {
                echo "gagal insert data log";
            }
        }else{
            echo "Gagal insert";
        }
    }

    public function editBarang($id_barang)
    {
        $user = $this->m_login->ambil_user($this->session->userdata('uname'));
        $barang = $this->bm->get_byid($id_barang);
        $data = [
            'barang' 	=> $barang,
            'user'		=> $user,
        ];
        $this->template->load('templateSuperAdmin','barang/edit-barang', $data);
    }


        if ($this->bm->update($barang, $id)) {
            $Log = [
                'ID_User'	=> $User,
                'Tanggal'	=> date('Y-m-d H:i:s'),
                'Aktifitas' => "Update data barang ".$this->session->userdata('uname'),
            ];
            if($this->Log_model->insertLog($Log)){
                redirect('admin/listBarang');
            }else{
                echo "gagal insert data log";
            }
        }else{
            echo "Gagal update";
        }
    }

    public function ambilBarang($id_barang, $ID_User)
    {
        $this->bm->delete($id_barang);
        $ur = $this->nm->get_namebyid($ID_User);

        $Log = [
            'ID_User'	=> $ID_User,
            'Tanggal'	=> date('Y-m-d H:i:s'),
            'Aktifitas' => "Ambil data barang ".$ur->Nama_User,
        ];
        if($this->Log_model->insertLog($Log)){
            redirect('admin/listBarang');
        }else{
            echo "gagal insert data log";
        }
    }

    /**public function laporanExcel2()
    {
        header("Content-type=application/vnd.ms-excel");
        header("content-disposition:attachment;filename=Datamatkul.xls");
        $data['matkul'] = $this->ModelJadwal->get_matkul();
        $this->load->view('admin/matkul_excel',$data);

    }

    public function laporanExcel()
    {
        header("Content-type=application/vnd.ms-excel");
        header("content-disposition:attachment;filename=DataDosen.xls");
        $data['dosen'] = $this->dm->get_all();
        $this->load->view('admin/laporan_excel',$data);

    }**/

}