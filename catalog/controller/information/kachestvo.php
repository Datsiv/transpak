<?php

class ControllerInformationKachestvo extends Controller {

	public function index(){
		$this->load->language('information/kachestvo');

		$this->load->model('catalog/kachestvo');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_empty'] = $this->language->get('text_empty');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => ''
		);
        $id='1';
		$news_list = $this->model_catalog_kachestvo->getNewsStory($id);

		$data['news_list'] = array();

		if ($news_list) {
            $data['description1'] = html_entity_decode($news_list['title'], ENT_QUOTES, 'UTF-8');
            $data['description2'] = html_entity_decode($news_list['description'], ENT_QUOTES, 'UTF-8');
            $data['description3'] = html_entity_decode($news_list['meta_title'], ENT_QUOTES, 'UTF-8');
			$this->document->setTitle($this->language->get('heading_title'));

			$data['heading_title'] = $this->language->get('heading_title');
			$data['text_empty'] = $this->language->get('text_empty');
			$news_setting = array();


            $image = array();
            $pdf = array();
            $needle   = '.pdf';
            for ($i=1; $i <= 12; $i++){
                 $imagetext = 'image'.$i;
                 $pdfname = 'pdf'.$i;
            if(strripos($news_list[$pdfname], $needle)){
               $pdf[$pdfname] = $news_list[$pdfname];
            }


                 $image[$imagetext] = $news_list[$imagetext];


            }
             $data['image'] = $image;
             $data['pdf'] = $pdf;

		}
         $this->load->model('catalog/information');
        $information_info = $this->model_catalog_information->getInformation(9);
        $data['descriptionseo'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');
        $data['heading_titleseo'] = $information_info['title'];

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
        
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/kachestvo.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/kachestvo.tpl',
				$data));
		} else {
			$this->response->setOutput($this->load->view('default/template/information/kachestvo.tpl', $data));
		}
	}

}