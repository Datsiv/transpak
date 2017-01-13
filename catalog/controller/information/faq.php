<?php

class ControllerInformationFaq extends Controller {

	public function index(){
		$this->load->language('information/faq');

		$this->load->model('catalog/faq');

		$this->load->model('tool/image');

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		if (isset($this->request->get['limit'])) {
			$limit = (int) $this->request->get['limit'];
		} else {
			$limit = $this->config->get('config_product_limit');
		}

		$this->document->setTitle($this->language->get('heading_title'));

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_empty'] = $this->language->get('text_empty');

		$data['button_continue'] = $this->language->get('button_continue');
		$data['continue'] = $this->url->link('common/home');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$url = '';


		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		if (isset($this->request->get['limit'])) {
			$url .= '&limit=' . $this->request->get['limit'];
		}

		$data['breadcrumbs'][] = array(
			'text' => 'Вопросы',
			'href' => ''
		);

		$filter_data = array(
			'start' => ($page - 1) * $limit,
			'limit' => $limit
		);

		$news_total = $this->model_catalog_faq->getTotalNews();
       
		$news_list = $this->model_catalog_faq->getNews($filter_data);

		$data['news_list'] = array();
		
		if ($news_list) {

			$this->document->setTitle($this->language->get('heading_title'));

			$data['heading_title'] = $this->language->get('heading_title');
			$data['text_empty'] = $this->language->get('text_empty');
			$news_setting = array();

			foreach ($news_list as $result) {

				if($result['image']){
					$image = $this->model_tool_image->resize($result['image'], 270, 270);
				}else{
					$image = false;
				}

				$data['news_list'][] = array(
					'title' => $result['title'],
					'thumb' => $image,
					'viewed' => sprintf($this->language->get('text_viewed'), $result['viewed']),
					'description' =>  html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'),
					'href' => $this->url->link('information/news/info', 'news_id=' . $result['news_id']),
					'posted' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
				);
			}
		}

		$url = '';

		if (isset($this->request->get['limit'])) {
			$url .= '&limit=' . $this->request->get['limit'];
		}

		$data['sorts'] = array();

		$data['sorts'][] = array(
			'text' => $this->language->get('text_title_asc'),
			'value' => 'nd.title-ASC',
			'href' => $this->url->link('information/news', 'sort=nd.title&order=ASC' . $url)
		);

		$data['sorts'][] = array(
			'text' => $this->language->get('text_title_desc'),
			'value' => 'nd.title-DESC',
			'href' => $this->url->link('information/news', 'sort=nd.title&order=DESC' . $url)
		);

		$data['sorts'][] = array(
			'text' => $this->language->get('text_date_asc'),
			'value' => 'n.date_added-ASC',
			'href' => $this->url->link('information/news', 'sort=n.date_added&order=ASC' . $url)
		);

		$data['sorts'][] = array(
			'text' => $this->language->get('text_date_desc'),
			'value' => 'n.date_added-DESC',
			'href' => $this->url->link('information/news', 'sort=n.date_added&order=DESC' . $url)
		);		

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
		
		$data['limits'] = array();

		$limits = array_unique(array($this->config->get('config_product_limit'), 25, 50, 75, 100));

		sort($limits);

		foreach ($limits as $value) {
			$data['limits'][] = array(
				'text' => $value,
				'value' => $value,
				'href' => $this->url->link('information/faq', $url . '&limit=' . $value)
			);
		}

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['limit'])) {
			$url .= '&limit=' . $this->request->get['limit'];
		}		

		$pagination = new Pagination();
		$pagination->total = $news_total;
		$pagination->page = $page;
		$pagination->limit = $limit;
		$pagination->url = $this->url->link('information/faq', $url . '&page={page}');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'),
			($news_total) ? (($page - 1) * $limit) + 1 : 0,
			((($page - 1) * $limit) > ($news_total - $limit)) ? $news_total : ((($page - 1) * $limit) + $limit),
			$news_total, ceil($news_total / $limit));

		// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
		if ($page == 1) {
			$this->document->addLink($this->url->link('information/faq', 'SSL'), 'canonical');
		} elseif ($page == 2) {
			$this->document->addLink($this->url->link('information/faq', 'SSL'), 'prev');
		} else {
			$this->document->addLink($this->url->link('information/faq', '&page=' . ($page - 1), 'SSL'), 'prev');
		}

		if ($limit && ceil($news_total / $limit) > $page) {
			$this->document->addLink($this->url->link('information/faq', '&page=' . ($page + 1), 'SSL'), 'next');
		}

	
		$data['limit'] = $limit;

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
        
        $this->load->model('catalog/information');
        $information_info = $this->model_catalog_information->getInformation(8);
        $data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');
        
        $information_info = $this->model_catalog_information->getInformation(9);
        $data['descriptionseo'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');
        $data['heading_titleseo'] = $information_info['title'];
        
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/akcii_list.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/faq_list.tpl',
				$data));
		} else {
			$this->response->setOutput($this->load->view('default/template/information/faq_list.tpl', $data));
		}
	}

	public function info(){
		$this->language->load('information/faq');

		$this->load->model('catalog/faq');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'href' => $this->url->link('common/home'),
			'text' => $this->language->get('text_home')
		);

		$data['breadcrumbs'][] = array(
			'href' => $this->url->link('information/faq'),
			'text' => $this->language->get('heading_title')
		);

		if (isset($this->request->get['news_id'])) {
			$news_id = $this->request->get['news_id'];
		} else {
			$news_id = 0;
		}

		$news_info = $this->model_catalog_akcii->getNewsStory($this->request->get['news_id']);

		if ($news_info) {

			$this->document->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js');
			$this->document->addStyle('catalog/view/javascript/jquery/magnific/magnific-popup.css');

			if ($news_info['meta_title']) {
				$this->document->setTitle($news_info['meta_title']);
			} else {
				$this->document->setTitle($news_info['title']);
			}

			$this->document->setDescription($news_info['meta_description']);
			$this->document->setKeywords($news_info['meta_keyword']);

			if ($news_info['meta_h1']) {
				$data['heading_title'] = $news_info['meta_h1'];
			} else {
				$data['heading_title'] = $news_info['title'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $news_info['title'],
				'href' => $this->url->link('information/faq/info', 'news_id=' . $news_id)
			);

			$this->document->setTitle($news_info['title']);
			$this->document->setDescription($news_info['meta_description']);
			$this->document->setKeywords($news_info['meta_keyword']);
			$this->document->addLink($this->url->link('information/news', 'news_id=' . $this->request->get['news_id']),
				'canonical');

			if ($news_info['meta_h1']) {
				$data['heading_title'] = $news_info['meta_h1'];
			} else {
				$data['heading_title'] = $news_info['title'];
			}


			$data['description'] = html_entity_decode($news_info['description']);

			$data['viewed'] = sprintf($this->language->get('text_viewed'), $news_info['viewed']);
			$data['posted'] = date($this->language->get('date_format_short'), strtotime($news_info['date_added']));

			if ($this->config->get('news_setting')) {
				$news_setting = $this->config->get('news_setting');
			}else{
				$news_setting['news_thumb_width']  = '220';
				$news_setting['news_thumb_height'] = '220';
				$news_setting['news_popup_width']  = '560';
				$news_setting['news_popup_height'] = '560';
			}

			if(isset($news_setting['news_share'])){
				$data['news_share'] = $news_setting['news_share'];
			}else{
				$data['news_share'] = false;
			}

			$this->load->model('tool/image');

			if ($news_info['image']) {
				$data['image'] = true;
			} else {
				$data['image'] = false;
			}
			if($news_info['image']){
				$data['thumb'] = $this->model_tool_image->resize($news_info['image'], $news_setting['news_thumb_width'],
				$news_setting['news_thumb_height']);
				$data['popup'] = $this->model_tool_image->resize($news_info['image'], $news_setting['news_popup_width'],
				$news_setting['news_popup_height']);
			}else{
				$data['thumb'] = false;
				$data['popup'] = false;
			}

			$data['button_news'] = $this->language->get('button_news');
			$data['button_continue'] = $this->language->get('button_continue');

			$data['news_list'] = $this->url->link('information/news');
			$data['continue'] = $this->url->link('common/home');

			if (isset($_SERVER['HTTP_REFERER'])) {
				$data['referred'] = $_SERVER['HTTP_REFERER'];
			}

			$data['refreshed'] = 'http://' . $_SERVER['HTTP_HOST'] . '' . $_SERVER['REQUEST_URI'];

			if (isset($data['referred'])) {
				$this->model_catalog_akcii->updateViewed($this->request->get['news_id']);
			}

			$data['description'] = html_entity_decode($news_info['description'], ENT_QUOTES, 'UTF-8');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/news.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/news.tpl',
					$data));
			} else {
				$this->response->setOutput($this->load->view('default/template/information/news.tpl', $data));
			}

		} else {
			$url = '';

			if (isset($this->request->get['news_id'])) {
				$url .= '&news_id=' . $this->request->get['news_id'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('information/news/info', $url)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['header'] = $this->load->controller('common/header');
			$data['footer'] = $this->load->controller('common/footer');
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/error/not_found.tpl',
					$data));
			} else {
				$this->response->setOutput($this->load->view('default/template/error/not_found.tpl', $data));
			}
		}
	}
}