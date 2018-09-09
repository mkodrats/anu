<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Processing extends CI_Controller {

	public function index()
	{
		echo "Fuahahahaha";
	}

	public function addPost(){
        $config['upload_path']="./assets/uploads";
        $config['allowed_types']='gif|jpg|png|jpeg';
        $this->load->library('upload',$config);
        if($this->upload->do_upload("cover")){
            $nama_file = $this->upload->data('file_name');
			$data = array('upload_data' => $this->upload->data());
			
			$get_judul_lcase = strtolower($this->input->post('judul'));
			$explode = explode(" ", $get_judul_lcase);
			$slug = implode("-", $explode);

            $data1 = array(
                'judul' => $this->input->post('judul', TRUE),
                'cover' => $nama_file,
				'kategori' => $this->input->post('kategori'),
				'isi' => htmlspecialchars(str_replace('"', "'",$this->input->post('isi'))),
				'slug' => $slug
            );
            $result= $this->db->insert('tb_post', $data1);
            if ($result == TRUE) {
                echo "ok";
            } else
                echo "fail";
        } else {
            echo "upload fail";
        }

    }
}
