<?php
class ControllerCommonHome extends Controller {
    public function index() {
        $this->document->setTitle($this->config->get('config_meta_title'));
        $this->document->setDescription($this->config->get('config_meta_description'));
        $this->document->setKeywords($this->config->get('config_meta_keyword'));
        if (isset($this->request->get['route'])) {
            $this->document->addLink(HTTP_SERVER, 'canonical');
        }
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');
// start category
        $this->load->model('catalog/product');
        $data['categories'] = array();
        $categories = $this->model_catalog_category->getCategories(0);
        foreach ($categories as $category) {
            $data['categories'][] = array(
                'name'     => $category['name'],
                'image'    => '/image/'.$category['image'],
                'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
            );
        }
// end category
        $this->load->model('catalog/information');
        $information_info = $this->model_catalog_information->getInformation(9);
        $data['descriptionseo'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');
        $data['heading_titleseo'] = $information_info['title'];

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
        } else {
            $this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
        }
    }
}