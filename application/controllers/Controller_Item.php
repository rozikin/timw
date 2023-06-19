<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Controller_Item extends CI_Controller
{
	public function __construct()
	{
		Parent::__construct();
		is_logged_in();
		$this->load->model('Model_Item', 'item');
	}

	public function index()
	{
		$data['title'] = 'Item';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		//konek model
		$data['item'] = $this->item->get_item();

		$this->load->view('template_oznet/header', $data);
		$this->load->view('template_oznet/sidebar', $data);
		$this->load->view('administrator/item/index', $data);
		$this->load->view('template_oznet/footer');
	}

	public function get_data()
	{
		// Datatables Variables
		$draw = intval($this->input->get("draw"));

		$this->db->order_by("id_item", "desc");
		$this->db->where("id_item >", 0);
		$query = $this->db->get("v_items");
		$data = [];
		$no = 0;

		foreach ($query->result() as $r) {
			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $r->item_code;
			$row[] = $r->item_description;
			$row[] = $r->name_category;
			$row[] = $r->supplier_name;
			$row[] = $r->unit;
			if ($r->remark)
				$row[] = '<a href="' . base_url('./assets/images/' . $r->remark) . '" target="_blank"><img src="' . base_url('./assets/images/' . $r->remark) . '"/></a>';
			else
				$row[] = '(No barcode)';

			$row[] = '

			<button type="button" class="btn btn-flat btn-default btn-sm dropdown-toggle dropdown-icon" data-toggle="dropdown">
			Action
	  		<span class="sr-only">Toggle Dropdown</span>
			</button>

			<div class="dropdown-menu" role="menu">
	  		<a class="dropdown-item" onclick="edit_data(' . "'" . $r->id_item . "'" . ')"><span class="fa fa-edit text-primary"></span> Edit</a>
	  		<div class="dropdown-divider"></div>
	  		<a class="dropdown-item" onclick="deleted(' . "'" . $r->id_item . "'" . ')"><span class="fa fa-trash text-danger"></span> Delete</a>
			</div>
			';

			// //add html for action
			// $row[] = '<a class="badge badge-primary" href="javascript:void(0)" title="Edit" onclick="edit_data(' . "'" . $r->id_item . "'" . ')"><i class="fas fa-edit"></i> Edit</a>
			// <a class="badge badge-danger" href="javascript:void(0)" title="Hapus" onclick="deleted(' . "'" . $r->id_item . "'" . ')"><i class="fas fa-trash"></i> Delete</a>';
			$data[] = $row;
		};

		$result = array(
			"draw" => $draw,
			"recordsTotal" => $query->num_rows(),
			"recordsFiltered" => $query->num_rows(),
			"data" => $data
		);

		echo json_encode($result);
		exit();
	}

	public function add_item()
	{
		$data['title'] = 'Add Item';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['supplier'] = $this->item->get_supplier();
		$data['unit'] = $this->item->get_unit();
		$data['category'] = $this->item->get_category();

		$this->load->view('template_oznet/header', $data);
		$this->load->view('template_oznet/sidebar', $data);
		$this->load->view('administrator/item/add_item', $data);
		$this->load->view('template_oznet/footer');
	}



	public function create()
	{





		$this->_validate();



		$this->load->library('ciqrcode'); //pemanggilan library QR CODE
		$config['cacheable']    = true; //boolean, the default is true
		$config['cachedir']     = './assets/'; //string, the default is application/cache/
		$config['errorlog']     = './assets/'; //string, the default is application/logs/
		$config['imagedir']     = './assets/images/'; //direktori penyimpanan qr code
		$config['quality']      = true; //boolean, the default is true
		$config['size']         = '1024'; //interger, the default is 1024
		$config['black']        = array(224, 255, 255); // array, default is array(255,255,255)
		$config['white']        = array(70, 130, 180); // array, default is array(0,0,0)
		$this->ciqrcode->initialize($config);
		$nim = $this->input->post('item_code');
		$image_name = $nim . '.png'; //buat name dari qr code sesuai dengan nim

		$params['data'] = $nim; //data yang akan di jadikan QR CODE
		$params['level'] = 'H'; //H=High
		$params['size'] = 4;
		$params['savename'] = FCPATH . $config['imagedir'] . $image_name; //simpan image QR CODE ke folder assets/images/
		$this->ciqrcode->generate($params); // fungsi untuk generate QR CODE



		$data = [
			'item_code' => $this->input->post('item_code'),
			'item_description' => $this->input->post('item_description'),
			'id_supplier' => $this->input->post('id_supplier'),
			'id_category' => $this->input->post('id_category'),
			'id_unit' => $this->input->post('id_unit'),
			'remark' => $image_name
		];


		$this->item->save('tb_items', $data);
		echo json_encode(array("status" => TRUE));
	}



	public function edit_item($id)
	{
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['title'] = 'Edit Item';
		$data['items'] = $this->item->getID($id);
		$data['supplier'] = $this->item->get_supplier();
		$data['unit'] = $this->item->get_unit();
		$data['category'] = $this->item->get_category();

		// $this->form_validation->set_rules('item_code', 'Item Code', 'required');

		$this->load->view('template_oznet/header', $data);
		$this->load->view('template_oznet/sidebar', $data);
		$this->load->view('administrator/item/edit_item', $data);
		$this->load->view('template_oznet/footer');
	}

	public function update()
	{

		$id = $this->input->post('id_item');



		$datax =  $this->db->get_where('tb_items',  ['id_item' => $id])->row_array();
		if ($datax > 0) {
			unlink('./assets/images/' . $datax['remark']);
		}



		$this->load->library('ciqrcode'); //pemanggilan library QR CODE
		$config['cacheable']    = true; //boolean, the default is true
		$config['cachedir']     = './assets/'; //string, the default is application/cache/
		$config['errorlog']     = './assets/'; //string, the default is application/logs/
		$config['imagedir']     = './assets/images/'; //direktori penyimpanan qr code
		$config['quality']      = true; //boolean, the default is true
		$config['size']         = '1024'; //interger, the default is 1024
		$config['black']        = array(224, 255, 255); // array, default is array(255,255,255)
		$config['white']        = array(70, 130, 180); // array, default is array(0,0,0)
		$this->ciqrcode->initialize($config);
		$nim = $this->input->post('item_code');
		$image_name = $nim . '.png'; //buat name dari qr code sesuai dengan nim

		$params['data'] = $nim; //data yang akan di jadikan QR CODE
		$params['level'] = 'H'; //H=High
		$params['size'] = 4;
		$params['savename'] = FCPATH . $config['imagedir'] . $image_name; //simpan image QR CODE ke folder assets/images/
		$this->ciqrcode->generate($params); // fungsi untuk generate QR CODE








		$data = [
			'item_code' => $this->input->post('item_code'),
			'item_description' => $this->input->post('item_description'),
			'id_supplier' => $this->input->post('id_supplier'),
			'id_category' => $this->input->post('id_category'),
			'id_unit' => $this->input->post('id_unit'),
			'remark' => $image_name
		];

		$this->item->update_data('tb_items', $data, $id);
	}


	public function remove($id)
	{
		// $barcode = $this->item->getID($id);
		// unlink('./assets/images/' . $barcode->remark);




		$this->item->delete_by_id($id);
		echo json_encode(array("status" => TRUE));

		$datax =  $this->db->get_where('v_items',  ['id_item' => $id])->row_array();
		unlink('./assets/images/' . $datax['remark']);
	}

	public function hapus_barcode($id)
	{
		$datax =  $this->db->get_where('v_items',  ['id_item' => $id])->row_array();
		unlink('./assets/images/' . $datax['remark']);
		// $data = $datax['remark'];
		// echo json_encode($data);

	}



	private function _validate()
	{
		$data = array();
		$data['error_string'] = array();
		$data['inputerror'] = array();
		$data['status'] = TRUE;

		if ($this->input->post('item_code') == '') {
			$data['inputerror'][] = 'item_code';
			$data['error_string'][] = 'item code name is required';
			$data['status'] = FALSE;
		}
		if ($data['status'] === FALSE) {
			echo json_encode($data);
			exit();
		}
	}



	function action()
	{



		$this->load->library("excel");

		$object = new PHPExcel();

		$object->setActiveSheetIndex(0);

		$table_columns = array("Name", "barcode");

		$column = 0;

		foreach ($table_columns as $field) {

			$object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);

			$column++;
		}

		$employee_data = $this->item->get_item();

		$excel_row = 2;







		foreach ($employee_data as $row) {

			$object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row['item_code']);

			$objDrawing = new PHPExcel_Worksheet_Drawing();
			$objDrawing->setPath('assets/images/' . $row['remark']);
			$objDrawing->setCoordinates('C' . $excel_row);
			$objDrawing->setWorksheet($object->getActiveSheet());
			$object->getActiveSheet()->getRowDimension($excel_row)->setRowHeight(120);



			// $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row['remark']);



			$excel_row++;
		}

		$object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');

		header('Content-Type: application/vnd.ms-excel');

		header('Content-Disposition: attachment;filename="Item Data.xls"');

		$object_writer->save('php://output');
	}





	// function action2()
	// {



	// 	$this->load->library("excel");

	// 	$list = $this->item->get_item();

	// 	// $objDrawing = new PHPExcel();

	// 	// $object->setActiveSheetIndex(0);

	// 	$rowNumber = 2;
	// 	foreach ($list as $data) {
	// 		$this->excel->getActiveSheet()->setCellValue('A' . $rowNumber, $data['item_code'])
	// 			->setCellValue('B' . $rowNumber, $data['item_code']);

	// 		if (file_exists('assets/images/' . $data['remark'])) {
	// 			$objDrawing = new PHPExcel_Worksheet_Drawing();
	// 			$objDrawing->setPath('assets/images/' . $data['remark']);
	// 			$objDrawing->setCoordinates('C' . $rowNumber);
	// 			$objDrawing->setWorksheet($this->excel->getActiveSheet());
	// 			$this->excel->getActiveSheet()->getRowDimension($rowNumber)->setRowHeight(40);
	// 		} else {
	// 			$this->excel->getActiveSheet()->setCellValue('C' . $rowNumber, '');
	// 		}


	// 		$rowNumber++;
	// 	}

	// 	$object_writer = PHPExcel_IOFactory::createWriter($this->excel, 'Excel5');

	// 	header('Content-Type: application/vnd.ms-excel');

	// 	header('Content-Disposition: attachment;filename="Item Data.xls"');

	// 	$object_writer->save('php://output');
	// }

	function export3()
	{
		$this->load->library("excel");
		$list = $this->item->get_item();
		$output = '';
		if ($list) {
			$output .= '
			<p style="text-align: center;">Item List </p>
			<table border="1">
			<thead>
				<tr>
					<th scope="col">Code</th>
					<th scope="col">Description</th>
					<th scope="col">Category</th>
					<th scope="col">Supplier</th>
					<th scope="col">Unit</th>
					<th scope="col" style="width: 200px;" >barcode</th>
				</tr>
			</thead>
			<tbody>
			';
			foreach ($list as $row) {
				$output .= '
				<tr style="height:125px;">
					<td style="vertical-align: center;">' . $row['item_code'] . '</td>
					<td style="float:right; ">' . $row['item_description'] . '</td>
					<td style="float:right; ">' . $row['name_category'] . '</td>
					<td style="float:right; ">' . $row['supplier_name'] . '</td>
					<td style="float:right; ">' . $row['unit'] . '</td>
					<td style="text-align:center; "><img src="http://localhost/timw/assets/images/' . $row['remark'] . '"></td>
				</tr>
			';
			}
			$output .= '</tbody></table>';
			header('Content-Type: application/force-download');
			header('Content-Disposition: attachment;filename="Item Data.xls"');
			header('Content-Transfer-Encoding: BINARY');
			echo $output;
		}
	}
}
