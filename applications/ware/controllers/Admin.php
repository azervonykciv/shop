<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        if (!($this->session->has_userdata('Status'))) {
            redirect('login');
        }
        $this->load->model('Log_model');
        $this->load->model('m_login');
        $this->load->model('crud_model');
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
        $barang = $this->crud_model->get_all('barang');
        $user = $this->m_login->ambil_user($this->session->userdata('uname'));
        $data = [
            'barang' => $barang,
            'user' => $user,
        ];

        $data['user'] = $this->m_login->ambil_user($this->session->userdata('uname'));
        $this->template->load('templateSuperAdmin', 'barang/list_barang', $data);
    }

    public function insertBarang()
    {
        $user = $this->m_login->ambil_user($this->session->userdata('uname'));
        $data = [
            'user' => $user,
        ];
        $this->template->load('templateSuperAdmin', 'barang/insert_barang', $data);
    }

    public function storeBarang()
    {
        $barang = [
            'KODE_BARANG'       => $this->input->post('KODE_BARANG'),
            'NAMA_BARANG'       => $this->input->post('NAMA_BARANG'),
            'KODE_UNIT'         => $this->input->post('KODE_UNIT'),
            'HARGA_JUAL'        => $this->input->post('HARGA_JUAL'),
            'KODE_KURS'         => $this->input->post('KODE_KURS'),
            'KODE_KLASIFIKASI'  => $this->input->post('KODE_KLASIFIKASI'),
            'QTY'               => $this->input->post('QTY'),
            'NOMORSERIAL'       => $this->input->post('NOMORSERIAL'),
            'TGLPRODUKSI'       => $this->input->post('TGLPRODUKSI'),
        ];

        if ($this->crud_model->insert($barang)) {

            $User = $this->session->userdata('uname');
            $id_user = $this->session->userdata('id_user');
            $Log = [
                'ID_User' => $id_user,
                'Tanggal' => date('Y-m-d H:i:s'),
                'Aktifitas' => "Insert data barang oleh " . $User,
            ];
            if ($this->crud_model->insertLog($Log)) {
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
		$barang = $this->crud_model->where('barang','KODE_BARANG',$id_barang,1);
		$data = [
			'barang' 	=> $barang,
			'user'		=> $user,
		];
		$this->template->load('templateSuperAdmin','barang/edit_barang', $data);
	}

	public function updateBarang()
	{
		$id = $this->input->post('KODE_BARANG');
		$User = $this->session->userdata('id_user');
		$barang = [
			'KODE_BARANG'       => $id,
			'NAMA_BARANG'       => $this->input->post('NAMA_BARANG'),
			'KODE_UNIT'         => $this->input->post('KODE_UNIT'),
			'HARGA_JUAL'        => $this->input->post('HARGA_JUAL'),
			'KODE_KURS'         => $this->input->post('KODE_KURS'),
			'KODE_DEPT'         => $this->input->post('KODE_DEPT'),
            'KODE_KLASIFIKASI'  => $this->input->post('KODE_KLASIFIKASI'),
            'QTY'               => $this->input->post('QTY'),
            'NOMORSERIAL'       => $this->input->post('NOMORSERIAL'),
            'TGLPRODUKSI'       => $this->input->post('TGLPRODUKSI'),
		];

		if ($this->crud_model->update('barang',$barang, 'KODE_BARANG',$id)) {
				$Log = [
					'ID_User'	=> $User,
					'Tanggal'	=> date('Y-m-d H:i:s'),
					'Aktifitas' => "Update data barang ".$this->session->userdata('uname'),
				];
				if($this->crud_model->insert('Log',$Log)){
					redirect('admin/listBarang');
				}else{
					echo "gagal insert data log";
				}
			}else{
			echo "Gagal update";
		}
	}

	public function deleteBarang($id_barang, $ID_User)
	{
		$this->crud_model->delete('barang','KODE_BARANG',$id_barang);
		$ur = $this->crud_model->where('user','ID_User',$ID_User,2);

		$Log = [
			'ID_User'	=> $ID_User,
			'Tanggal'	=> date_default_timezone_set('Asia/Jakarta'),
			'Aktifitas' => "Delete data barang ".$ur->Nama_User,
		];
		if($this->crud_model->insert($Log,'Log')){
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

	}**/

	/**public function laporanExcel()
	{
		header("Content-type=application/vnd.ms-excel");
		header("content-disposition:attachment;filename=DataDosen.xls");
		$data['dosen'] = $this->dm->get_all();
		$this->load->view('admin/laporan_excel',$data);

	}**/

}