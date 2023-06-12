<?php
require_once(DIR_SYSTEM . 'library/sendpulse/api/sendpulseInterface.php');
require_once(DIR_SYSTEM . 'library/sendpulse/api/sendpulse.php');
define('TOKEN_STORAGE', 'file');

class ModelExtensionModuleSendpulse extends Model
{
    /**
     * Get list of address books
     *
     * @param $id
     * @param $secret
     */

    public function getCampaign($id,$secret,$campaign_id){
        if ($id != '' && $secret != '') {
            try {
                $SPApiProxy = new SendpulseApi($id, $secret, TOKEN_STORAGE);                               
                $getCampaign = $SPApiProxy->getCampaignInfo( $campaign_id);
                return $getCampaign;

            } catch (Exception $e) {

                return false;

            }
        }
        return false;     
    }

    public function listCampaigns($id,$secret,$offset = Null){
        if ($id != '' && $secret != '') {
            try {
                $SPApiProxy = new SendpulseApi($id, $secret, TOKEN_STORAGE);                               
                $listCampaigns = $SPApiProxy->listCampaigns($offset);
                return $listCampaigns;

            } catch (Exception $e) {

                return false;

            }
        }
        return false;     
    }


    public function listSenders($id,$secret){
        if ($id != '' && $secret != '') {
            try {
                $SPApiProxy = new SendpulseApi($id, $secret, TOKEN_STORAGE);                               
                $listSenders = $SPApiProxy->listSenders();
                return $listSenders;

            } catch (Exception $e) {

                return false;

            }
        }
        return false;     
    }

    public function createCampaign($id,$secret,$data ) {              
        if ($id != '' && $secret != '') {
            try {
                $SPApiProxy = new SendpulseApi($id, $secret, TOKEN_STORAGE);                               
                $createCampaign = $SPApiProxy->createCampaign($data);
                return $createCampaign;

            } catch (Exception $e) {

                return false;

            }
        }
        return false;     
    }


    public function createAddressBook($id,$secret,$bookName ) {
        if ($id != '' && $secret != '') {
            try {
                $SPApiProxy = new SendpulseApi($id, $secret, TOKEN_STORAGE);
                $AddressBooks = $SPApiProxy->createAddressBook($bookName);
                return $AddressBooks;

            } catch (Exception $e) {

                return false;

            }
        }
        return false;
    }

    public function getBooks($id, $secret)
    {
        if ($id != '' && $secret != '') {
            try {
                $SPApiProxy = new SendpulseApi($id, $secret, TOKEN_STORAGE);
                $AddressBooks = $SPApiProxy->listAddressBooks();
                return $AddressBooks;

            } catch (Exception $e) {

                return false;

            }
        }
        return false;
    }

    /**
     * Add new emails to address book
     *
     * @param $id
     * @param $secret
     * @param $id_book
     */
    public function export($id, $secret, $id_book)
    {
        $this->load->language('extension/module/sendpulse');
        $this->load->model('setting/setting');

        $custom_field_celular    = '"'.$this->config->get('module_sendpulse_celular').'"';
        $custom_field_sexo       = '"'.$this->config->get('module_sendpulse_sexo').'"';
        $custom_field_nascimento = '"'.$this->config->get('module_sendpulse_nascimento').'"';        

        $json = array();
        $count_emails = 0;
        if ($id != '' && $secret != '' && $id_book != '') {
            
            
            $query = $this->db->query("SELECT a.email, a.firstname, a.lastname,b.name as sexo,
            trim(replace(replace(replace(a.telephone, ')',''), '(', ''), '-', '')) as telefone, 
            DATE_FORMAT(STR_TO_DATE(JSON_UNQUOTE(JSON_EXTRACT(custom_field, '$.$custom_field_nascimento')),'%d/%m/%Y'), '%Y-%m-%d') as nascimento,
            trim(replace(replace(replace(JSON_UNQUOTE(JSON_EXTRACT(custom_field, '$.$custom_field_celular')), ')',''), '(', ''), '-', '')) as celular 
            FROM " . DB_PREFIX . "customer a 
            LEFT JOIN " . DB_PREFIX . "custom_field_value_description b on JSON_UNQUOTE(JSON_EXTRACT(custom_field, '$.$custom_field_sexo')) = custom_field_value_id");

            

            $emails = array();

            foreach ($query->rows as $result) {
                $count_emails++;
                $emails[] = array(
                    'email' => $result['email'],
                    'variables' => array(
                        'telefone'      => $result['telefone'],
                        'nome'          => $result['firstname'],
                        'sobreNome'     => $result['lastname'],
                        'nascimento'    => $result['nascimento'],
                        'celular'       => $result['celular'],
                        'sexo'          => $result['sexo']
                        //$this->language->get('entry_firstname') => $result['firstname'].' '.$result['lastname'],
                        //$this->language->get('entry_fax') => $result['fax'],
                        //$this->language->get('entry_status') => $result['status']
                    )
                );
            }
            if ($emails) {
                try {
                    $api = new SendpulseApi($id, $secret, TOKEN_STORAGE);
                    $exportEmails = array_chunk($emails, 1000);
                    foreach ($exportEmails as $exportEmail) {
                        $result = $api->addEmails($id_book, $exportEmail);
                        if (isset($result->is_error) && $result->is_error) {
                            $msg = isset($result->message) ? $result->message : 'Something went wrong';
                            throw new Exception($msg);
                        }
                    }

                    $json['success'] = sprintf($this->language->get('text_success_export'), $count_emails);
                    $this->model_setting_setting->editSettingValue('module_sendpulse', 'module_sendpulse_count', $count_emails);

                } catch (Exception $e) {
                    $json['error'] = $this->language->get('error_connect');
                }
            } else $json['error'] = $this->language->get('error_not_customers');
        }
        return $json;
    }

    /**
     * Add new customer email to address book
     *
     * @param $data
     */
    public function exportNewCustomer($customer_id)
    {
        $this->load->language('extension/module/sendpulse');
        $this->load->model('setting/setting');

        $custom_field_celular    = '"'.$this->config->get('module_sendpulse_celular').'"';
        $custom_field_sexo       = '"'.$this->config->get('module_sendpulse_sexo').'"';
        $custom_field_nascimento = '"'.$this->config->get('module_sendpulse_nascimento').'"';

        $query = $this->db->query("SELECT a.email, a.firstname, a.lastname,b.name as sexo,
            trim(replace(replace(replace(a.telephone, ')',''), '(', ''), '-', '')) as telefone, 
            DATE_FORMAT(STR_TO_DATE(JSON_UNQUOTE(JSON_EXTRACT(custom_field, '$.$custom_field_nascimento')),'%d/%m/%Y'), '%Y-%m-%d') as nascimento,
            trim(replace(replace(replace(JSON_UNQUOTE(JSON_EXTRACT(custom_field, '$.$custom_field_celular')), ')',''), '(', ''), '-', '')) as celular 
            FROM " . DB_PREFIX . "customer a 
            LEFT JOIN " . DB_PREFIX . "custom_field_value_description b on JSON_UNQUOTE(JSON_EXTRACT(custom_field, '$.$custom_field_sexo')) = custom_field_value_id 
            where customer_id = $customer_id");

        $data = $query->row;

        $emails = array();
            $emails[] = array(
                'email' => $data['email'],
                'variables' => array(
                    'telefone'      => $data['telefone'],
                    'nome'          => $data['firstname'],
                    'sobreNome'     => $data['lastname'],
                    'nascimento'    => $data['nascimento'],
                    'celular'       => $data['celular'],
                    'sexo'          => $data['sexo']

                    //'Phone' => $data['telephone'],
                    //$this->language->get('entry_firstname') => $data['firstname'].' '.$data['lastname'],
                    //'name' => $data['firstname'] . ' ' . $data['lastname']
                    //$this->language->get('entry_fax') => (isset($data['fax'])?$data['fax']:''),
                    //$this->language->get('entry_status') => 1
                )
            );

            try {
                $api = new SendpulseApi($this->config->get('module_sendpulse_id'), $this->config->get('module_sendpulse_secret'), TOKEN_STORAGE);
                $result = $api->addEmails($this->config->get('module_sendpulse_book_default'), $emails);

                if (isset($result->is_error) && $result->is_error) {
                    $msg = isset($result->message) ? $result->message : 'Something went wrong';
                    throw new Exception($msg);
                }
                $err = 1;
                $this->db->query("UPDATE " . DB_PREFIX . "setting SET value =  value+ 1 WHERE `key` = 'module_sendpulse_count'");

            } catch (Exception $e) {
                $err = 0;
            }


        return $err;
    }

    /**
     * Get count clients
     *
     */
    public function getTotalClients()
    {

        $query = $this->db->query("SELECT COUNT(DISTINCT customer_id) AS total FROM `" . DB_PREFIX . "customer`");

        return $query->row['total'];
    }
}
