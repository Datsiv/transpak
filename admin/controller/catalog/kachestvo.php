<?php
class ControllerCatalogKachestvo extends Controller {
	private $error = array();

	public function index() {
		$this->language->load('catalog/kachestvo');

		$this->load->model('catalog/kachestvo');
		
		$this->document->setTitle($this->language->get('heading_title'));
	
		$this->load->model('setting/setting');
	
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting(news, $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('catalog/kachestvo', 'token=' . $this->session->data['token'], 'SSL'));
	
		}
	
		$this->getForm();
	}

	public function add() {
		$this->language->load('catalog/kachestvo');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/kachestvo');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_kachestvo->addNews($this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('catalog/kachestvo', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}

	public function edit() {
		$this->language->load('catalog/kachestvo');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/kachestvo');
$id=1;
       
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_kachestvo->editNews($id, $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('catalog/kachestvo', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}
	
	public function delete() {
		$this->language->load('catalog/kachestvo');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/kachestvo');

		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $news_id) {
				$this->model_catalog_kachestvo->deleteNews($news_id);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('catalog/kachestvo', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getList();
	}

	private function getForm() { 
	    //CKEditor
    if ($this->config->get('config_editor_default')) {
        $this->document->addScript('view/javascript/ckeditor/ckeditor.js');
        $this->document->addScript('view/javascript/ckeditor/ckeditor_init.js');
    }
		$this->language->load('catalog/kachestvo');
	
		$this->load->model('catalog/kachestvo');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$data['heading_title'] = $this->language->get('heading_title');
	
		$data['text_form'] = $this->language->get('text_edit');
		$data['text_default'] = $this->language->get('text_default');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
    	$data['text_image_manager'] = $this->language->get('text_image_manager');
		$data['text_browse'] = $this->language->get('text_browse');
		$data['text_clear'] = $this->language->get('text_clear');
	
		$data['text_select_all'] = $this->language->get('text_select_all');
		$data['text_unselect_all'] = $this->language->get('text_unselect_all');
		$data['column_date_added'] = $this->language->get('column_date_added');
	
		$data['entry_title'] = $this->language->get('entry_title');
		$data['entry_meta_title'] = $this->language->get('entry_meta_title');
		$data['entry_meta_h1'] = $this->language->get('entry_meta_h1');
		$data['entry_meta_description'] = $this->language->get('entry_meta_description');
		$data['entry_meta_keyword'] = $this->language->get('entry_meta_keyword');
		$data['entry_description'] = $this->language->get('entry_description');
		$data['entry_date_added'] = $this->language->get('entry_date_added');
		$data['entry_store'] = $this->language->get('entry_store');
		$data['entry_keyword'] = $this->language->get('entry_keyword');
		$data['entry_image'] = $this->language->get('entry_image');
		$data['entry_status'] = $this->language->get('entry_status');
	
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
	
		$data['tab_general'] = $this->language->get('tab_general');
		$data['tab_data'] = $this->language->get('tab_data');

		$data['help_keyword'] = $this->language->get('help_keyword');		
	
		$data['token'] = $this->session->data['token'];
	
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['title'])) {
			$data['error_title'] = $this->error['title'];
		} else {
			$data['error_title'] = array();
		}

		if (isset($this->error['description'])) {
			$data['error_description'] = $this->error['description'];
		} else {
			$data['error_description'] = array();
		}

		if (isset($this->error['meta_title'])) {
			$data['error_meta_title'] = $this->error['meta_title'];
		} else {
			$data['error_meta_title'] = array();
		}

		if (isset($this->error['keyword'])) {
			$data['error_keyword'] = $this->error['keyword'];
		} else {
			$data['error_keyword'] = '';
		}
	
		$data['breadcrumbs'] = array();
	
		$data['breadcrumbs'][] = array(
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'text'      => $this->language->get('text_home'),
			'separator' => false
		);
	
		$data['breadcrumbs'][] = array(
			'href'      => $this->url->link('catalog/kachestvo', 'token=' . $this->session->data['token'], 'SSL'),
			'text'      => $this->language->get('heading_title'),
			'separator' => ' :: '
		);
	
		if (!isset($this->request->get['news_id'])) {
			$data['kachestvo'] = $this->url->link('catalog/kachestvo/add', 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$data['kachestvo'] = $this->url->link('catalog/kachestvo/edit', 'token=' . $this->session->data['token'] . '&news_id=1', 'SSL');
		}
	
		$data['cancel'] = $this->url->link('catalog/kachestvo', 'token=' . $this->session->data['token'], 'SSL');
	
		
		$news_info = $this->model_catalog_kachestvo->getNewsStory(1);
		

		$data['token'] = $this->session->data['token'];
		$data['ckeditor'] = $this->config->get('config_editor_default');

		$this->load->model('localisation/language');

		$data['languages'] = $this->model_localisation_language->getLanguages();

		$data['lang'] = $this->language->get('lang');
	
		if (isset($this->request->post['news_description'])) {
			$data['news_description'] = $this->request->post['news_description'];
		
			
		} else {
			$data['news_description'] = array();
		}
		$data['news_description'] = $this->model_catalog_kachestvo->getNewsDescriptions(1);
		if (isset($this->request->post['meta_keyword'])) {
			$data['meta_keyword'] = $this->request->post['meta_keyword'];
		
			
		} else {
			$data['meta_keyword'] = array();
		}
        $data['meta_keyword'] = $this->model_catalog_kachestvo->getNewsDescriptions(1);
		if (isset($this->request->post['date_added'])) {
       		$data['date_added'] = $this->request->post['date_added'];
		} elseif (isset($news_info['date_added'])) {
			$data['date_added'] = $news_info['date_added'];
		} else {
			$data['date_added'] = date('Y-m-d');
		}
	
		$this->load->model('setting/store');
	
		$data['stores'] = $this->model_setting_store->getStores();
	
		if (isset($this->request->post['news_store'])) {
			$data['news_store'] = $this->request->post['news_store'];
		} elseif (isset($news_info)) {
			$data['news_store'] = $this->model_catalog_kachestvo->getNewsStores(1);
		} else {
			$data['news_store'] = array(0);
		}
	
		if (isset($this->request->post['keyword'])) {
			$data['keyword'] = $this->request->post['keyword'];
		} elseif (isset($news_info)) {
			$data['keyword'] = $news_info['keyword'];
		} else {
			$data['keyword'] = '';
		}
	
		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (isset($news_info)) {
			$data['status'] = $news_info['status'];
		} else {
			$data['status'] = '';
		}
        $this->load->model('tool/image');
	for ($i=1; $i <= 12; $i++){
        $imagetext = 'image'.$i;
        $thumb = 'thumb'.$i;
        $thumbpdf = 'thumbpdf'.$i; 
        $thumbpdftext = 'pdftext'.$i;
        $pdf = 'pdf'.$i;
		if (isset($this->request->post[$imagetext])) {
			$data[$imagetext] = $this->request->post[$imagetext];
		} elseif (!empty($news_info)) {
			$data[$imagetext] = $news_info[$imagetext];
		} else {
			$data[$imagetext] = '';
		}

       
		

		if (isset($this->request->post[$imagetext]) && is_file(DIR_IMAGE . $this->request->post[$imagetext])) {
			$data[$thumb] = $this->model_tool_image->resize($this->request->post[$imagetext], 100, 100);
		} elseif (!empty($news_info) && is_file(DIR_IMAGE . $news_info[$imagetext])) {
			$data[$thumb] = $this->model_tool_image->resize($news_info[$imagetext], 100, 100);
		} else {
			$data[$thumb] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
        
        if (isset($this->request->post[$pdf]) && is_file(DIR_IMAGE . $this->request->post[$pdf])) {
			$data[$thumbpdf] = $this->request->post[$pdf];
		} elseif (!empty($news_info) && is_file(DIR_IMAGE . $news_info[$pdf])) {
			$data[$thumbpdf] = $this->model_tool_image->resize('pdf.png', 100, 100);
            $data[$thumbpdftext] = $news_info[$pdf];
		} else {
			$data[$thumbpdf] = $this->model_tool_image->resize('no_pdf.png', 100, 100);
            $data[$thumbpdftext] = '';
		}
       
}
       
      
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);

	  
			$data['action'] = $this->url->link('catalog/kachestvo/edit', 'token=' . $this->session->data['token'] . '&news_id=1', 'SSL');
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		
		$this->response->setOutput($this->load->view('catalog/kachestvo_form.tpl', $data));

	}
	public function setting() {
		$this->language->load('catalog/kachestvo');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');
		$this->load->model('catalog/kachestvo');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateSetting()) {
			$this->model_setting_setting->editSetting('news_setting', $this->request->post);
				if (isset($this->request->post['news_url'])) {
					$this->model_catalog_kachestvo->setNewsListUrl($this->request->post['news_url']);
				}	
			$this->session->data['success'] = $this->language->get('text_success');

			$this->cache->delete('news_setting');

			$this->response->redirect($this->url->link('catalog/kachestvo/setting', 'token=' . $this->session->data['token'], 'SSL'));
		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['thumb'])) {
			$data['error_thumb'] = $this->error['thumb'];
		} else {
			$data['error_thumb'] = '';
		}

		if (isset($this->error['popup'])) {
			$data['error_popup'] = $this->error['popup'];
		} else {
			$data['error_popup'] = '';
		}

		if (isset($this->error['description_limit'])) {
			$data['error_limit'] = $this->error['description_limit'];
		} else {
			$data['error_limit'] = '';
		}		

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		$data['entry_thumb'] = $this->language->get('entry_thumb');
		$data['entry_popup'] = $this->language->get('entry_popup');
		$data['entry_share'] = $this->language->get('entry_share');
		$data['entry_limit'] = $this->language->get('entry_limit');
		$data['entry_news_url'] = $this->language->get('entry_news_url');

		$data['entry_width'] = $this->language->get('entry_width');
		$data['entry_height'] = $this->language->get('entry_height');

		$data['action'] = $this->url->link('catalog/news/setting', 'token=' . $this->session->data['token'], 'SSL');
		$data['cancel'] = $this->url->link('catalog/news', 'token=' . $this->session->data['token'], 'SSL');
	
		$data['breadcrumbs'] = array();
	
		$data['breadcrumbs'][] = array(
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'text'      => $this->language->get('text_home'),
			'separator' => false
		);
	
		$data['breadcrumbs'][] = array(
			'href'      => $this->url->link('catalog/kachestvo', 'token=' . $this->session->data['token'], 'SSL'),
			'text'      => $this->language->get('heading_title'),
			'separator' => ' :: '
		);

		$data['breadcrumbs'][] = array(
			'href'      => $this->url->link('catalog/kachestvo/setting', 'token=' . $this->session->data['token'], 'SSL'),
			'text'      => $this->language->get('text_news_setting'),
			'separator' => ' :: '
		);	

		if (isset($this->request->post['news_setting'])) {
			$news_setting = $this->request->post['news_setting'];
		} elseif ($this->config->get('news_setting')) {
			$news_setting = $this->config->get('news_setting');
		} else {
			$news_setting = array();
		}

		if (isset($news_setting['news_thumb_width'])) {
			$data['news_thumb_width'] = $news_setting['news_thumb_width'];
		} else {
			$data['news_thumb_width'] = '';
		}	

		if (isset($news_setting['news_thumb_height'])) {
			$data['news_thumb_height'] = $news_setting['news_thumb_height'];
		} else {
			$data['news_thumb_height'] = '';
		}	

		if (isset($news_setting['news_popup_width'])) {
			$data['news_popup_width'] = $news_setting['news_popup_width'];
		} else {
			$data['news_popup_width'] = '';
		}	

		if (isset($news_setting['news_popup_height'])) {
			$data['news_popup_height'] = $news_setting['news_popup_height'];
		} else {
			$data['news_popup_height'] = '';
		}	

		if (isset($news_setting['description_limit'])) {
			$data['description_limit'] = $news_setting['description_limit'];
		} else {
			$data['description_limit'] = '';
		}

		if (isset($news_setting['news_share'])) {
			$data['news_share'] = $news_setting['news_share'];
		} else {
			$data['news_share'] = '';
		}								

		$news_url = $this->model_catalog_news->getNewsListUrl('information/kachestvo');

		if($news_url){
			$data['news_url'] = $news_url;
		}else{
			$data['news_url'] = '';
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		
		$this->response->setOutput($this->load->view('catalog/news_setting.tpl', $data));
	}

	protected function validate(){
		if (!$this->user->hasPermission('modify', 'module/theme_config')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}

	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'catalog/kachestvo')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
	
		foreach ($this->request->post['news_description'] as $language_id => $value) {
			if ((strlen($value['title']) < 3) || (strlen($value['title']) > 250)) {
				$this->error['title'][$language_id] = $this->language->get('error_title');
			}
		
			if (strlen($value['description']) < 3) {
				$this->error['description'][$language_id] = $this->language->get('error_description');
			}
		}
	
		return !$this->error;
	}

	protected function validateDelete() {
		if (!$this->user->hasPermission('modify', 'catalog/kachestvo')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
	
		return !$this->error;
	}

	protected function validateSetting() {
		if (!$this->user->hasPermission('modify', 'catalog/kachestvo')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		$news_setting = $this->request->post['news_setting'];

		if (!$news_setting['news_thumb_width'] || !$news_setting['news_thumb_height']) {
			$this->error['thumb'] = $this->language->get('error_thumb');
		}
	
		if (!$news_setting['news_popup_width'] || !$news_setting['news_popup_height']) {
			$this->error['popup'] = $this->language->get('error_popup');
		}

		if (!$news_setting['description_limit']) {
			$this->error['description_limit'] = $this->language->get('error_description_limit');
		}		
	
		return !$this->error;
	}
}
?>