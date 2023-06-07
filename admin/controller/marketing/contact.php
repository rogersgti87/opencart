<?php
class ControllerMarketingContact extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('marketing/contact');
		
		$this->load->model('setting/setting');
		$this->load->model('extension/module/sendpulse');	
		
		$id = $this->config->get('module_sendpulse_id');
		$secret = $this->config->get('module_sendpulse_secret');
	
		if($id != '' && $secret != '') {
			$data['books'] = $this->model_extension_module_sendpulse->getBooks($id, $secret);
			if(!$data['books']) $this->error['warning'] = $this->language->get('error_connect');
		}
		else $data['books'] = false;		


		$this->document->setTitle($this->language->get('heading_title'));

		$data['user_token'] = $this->session->data['user_token'];

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('marketing/contact', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['cancel'] = $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true);

		$this->load->model('setting/store');

		$data['stores'] = $this->model_setting_store->getStores();

		$this->load->model('customer/customer_group');

		$data['customer_groups'] = $this->model_customer_customer_group->getCustomerGroups();

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('marketing/contact', $data));
	}

	public function send() {
		$this->load->language('marketing/contact');

		$this->load->model('setting/setting');

		$this->load->model('extension/module/sendpulse');

		$id = $this->config->get('module_sendpulse_id');
		$secret = $this->config->get('module_sendpulse_secret');
		$sender_default = $this->config->get('module_sendpulse_sender_default');
		$sender_default = explode(',',$sender_default);
		$sender_name    = $sender_default[0];
		$sender_email   = $sender_default[1];

		$json = array();

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if (!$this->user->hasPermission('modify', 'marketing/contact')) {
				$json['error']['warning'] = $this->language->get('error_permission');
			}			

			$query  = $this->db->query("SELECT pd.name,p.price,p.image, su.keyword FROM " . DB_PREFIX . "product p			 
			INNER JOIN " . DB_PREFIX . "product_description pd
			ON p.product_id = pd.product_id
			LEFT JOIN " . DB_PREFIX . "seo_url su
			ON REPLACE(su.query,'product_id=','') = p.product_id
			 WHERE p.product_id IN(".implode(',',$this->request->post['product']).")");
        	$result = $query->rows;
			

			$body = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
			<html xmlns="http://www.w3.org/1999/xhtml">
			 <head>
			  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
			  <title>Demystifying Email Design</title>
			  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
			</head><body>';

			$body .= '<table border="1" cellpadding="0" cellspacing="0" width="600">';			
		foreach($result as $r){		
						
			$body .=	'<tr>																			
							<td>
							<img src="'.HTTP_CATALOG.'image/'.$r['image'].'" alt="" width="200" height="200" style="display: block;" />
							</td>
						</tr>
						<tr>
							<td style="padding: 25px 0 0 0;">
							<h1><a href="'.HTTP_CATALOG.$r['keyword'].'">'.$r['name'].'</a></h1>
							</td>
						</tr>
						<tr>
							<td style="padding: 25px 0 0 0;">
							R$'.number_format($r['price'],2,'.',',').'
							</td>
						</tr>';																								
		}
			$body .=    '</table>';

			$body .= '</body></html>';			


			$newDate = DateTime::createFromFormat('d/m/Y H:i:s', $this->request->post['campaign_date'])->modify('+4 hours')->format('Y-m-d H:i:s');

			$data = array(
				'sender_name'  => $sender_name,
				'sender_email' => $sender_email,
				'subject'      => $this->request->post['subject'],				
				'body'         => base64_encode( $body ),
				'list_id'      => $this->request->post['module_sendpulse_book_default'],				
				'name'         => $this->request->post['campaign_name'],
				'attachments'  => '',
				'send_date'    => '2022-08-21 20:00:00',
				//'type'		   => 'draft'				
			);			

		$json['createCampaign'] =	$this->model_extension_module_sendpulse->createCampaign($id,$secret,$data);

		

			/* if (!$this->request->post['subject']) {
				$json['error']['subject'] = $this->language->get('error_subject');
			} */

			/* if($id != '' && $secret != '' && isset($this->request->post['book'])) {
				$json = $this->model_extension_module_sendpulse->export($id, $secret, $this->request->post['book']);
			} */

			
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
