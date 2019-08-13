<?php

class ControllerCommonHeader extends Controller
{
    public function index()
    {
        // Analytics
        $this->load->model('extension/extension');

        $data['analytics'] = array();

        $analytics = $this->model_extension_extension->getExtensions('analytics');

        foreach ($analytics as $analytic) {
            if ($this->config->get($analytic['code'] . '_status')) {
                $data['analytics'][] = $this->load->controller('analytics/' . $analytic['code']);
            }
        }

        if ($this->request->server['HTTPS']) {
            $server = $this->config->get('config_ssl');
        } else {
            $server = $this->config->get('config_url');
        }

        if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
            $this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
        }

        $data['title'] = $this->document->getTitle();

        $data['base'] = $server;
        $data['description'] = $this->document->getDescription();
        $data['keywords'] = $this->document->getKeywords();
        $data['links'] = $this->document->getLinks();
        $data['styles'] = $this->document->getStyles();
        $data['scripts'] = $this->document->getScripts();
        /**
         * задаємо мета robots
         * можна в необхідному контролері додати $this->document->addMetaRobots
         * також через vqmod добавляється $data['robots'] для кастомних сторінок, можна добавити через адмінку в модулі "Seo кастомных страниц"
         */
        $data['meta'] = $this->document->getMetaRobots();
        $data['lang'] = $this->language->get('code');
        $data['direction'] = $this->language->get('direction');

				/*CUSTOM SEO DATA*/
					$this->load->model('module/seo_page');
					$seo_data = $this->model_module_seo_page->getPageSeoData();
					$lang_id = $this->config->get('config_language_id');
					if($seo_data){
						$data['title'] = $seo_data['item'][$lang_id]['meta_title'];
						$data['robots'] = $seo_data['robots'];
						$data['description'] = $seo_data['item'][$lang_id]['meta_description'];
						$data['keywords'] = $seo_data['item'][$lang_id]['meta_keywords'];
					}

				/*end CUSTOM SEO DATA*/
			

        $data['alter_lang'] = $this->getAlterLanguageLinks($this->document->getLinks(), $data['lang'], $this->config->get('config_language_default'));
        $data['name'] = $this->config->get('config_name');
        $data['gtm'] = trim($this->config->get('config_gtm'));

        if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
            $data['logo'] = $server . 'image/' . $this->config->get('config_logo');
        } else {
            $data['logo'] = '';
        }

        $this->load->language('common/header');
        $this->load->language('common/search');

		$data['og_url'] = ((isset($this->request->server['HTTPS']) && !empty($this->request->server['HTTPS'])) ? HTTPS_SERVER : HTTP_SERVER) . substr($this->request->server['REQUEST_URI'], 1, (strlen($this->request->server['REQUEST_URI'])-1));
        $url=strtok($_SERVER["REQUEST_URI"],'?');
        $data['og_url_without_get'] = ((isset($this->request->server['HTTPS']) && !empty($this->request->server['HTTPS'])) ? HTTPS_SERVER : HTTP_SERVER) . substr($url, 1, (strlen($url)-1));
        unset($url);
        $data['og_image'] = $this->document->getOgImage();

		$data['text_home'] = $this->language->get('text_home');

		$data['logged'] = $this->customer->isLogged();
        $data['user_name'] = $this->customer->getFirstName() . ' ' . $this->customer->getLastName();
        $data['account'] = $this->url->link('account/account', '', 'SSL');

		// Wishlist
		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
            $data['wishlist_count'] = $this->model_account_wishlist->getTotalWishlist();
		} else {
			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
			$data['wishlist_count'] = (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0);
		}

		$data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));

		$data['text_account'] = $this->language->get('text_account');
		$data['text_register'] = $this->language->get('text_register');
		$data['text_login'] = $this->language->get('text_login');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_page'] = $this->language->get('text_page');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_all'] = $this->language->get('text_all');


        $data['text_search'] = $this->language->get('text_search');
        $data['text_site_navigate'] = $this->language->get('text_site_navigate');
        $data['text_categories'] = $this->language->get('text_categories');

        $data['home'] = $this->url->link('common/home');
        $data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
        $data['logged'] = $this->customer->isLogged();
        $data['account'] = $this->url->link('account/account', '', 'SSL');
        $data['register'] = $this->url->link('account/register', '', 'SSL');
        $data['login'] = $this->url->link('account/login', '', 'SSL');
        $data['order'] = $this->url->link('account/order', '', 'SSL');
        $data['transaction'] = $this->url->link('account/transaction', '', 'SSL');
        $data['download'] = $this->url->link('account/download', '', 'SSL');
        $data['logout'] = $this->url->link('account/logout', '', 'SSL');
        $data['shopping_cart'] = $this->url->link('checkout/cart');
        $data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
        $data['contact'] = $this->url->link('information/contact');
        $data['telephone'] = $this->config->get('config_telephone');
        $data['config_fb'] = $this->config->get('config_fb');
        $data['config_youtube'] = $this->config->get('config_youtube');
        $data['config_instagram'] = $this->config->get('config_instagram');

        //links, name can be array!!!!
        $data['left_sideBar_links'] = [
            [
                'name' => $this->language->get('menu_home'),
                'href' => $this->url->link('common/home', '', 'SSL'),
            ],
            [
                'name' => $this->language->get('menu_store'),
                'href' => $this->url->link('product/category', 'path=60'),
            ],
            [
                'name' => $this->language->get('menu_news'),
                'href' => $this->url->link('ncat=65', '', 'SSL'),
            ],
            [
                'name' => $this->language->get('menu_special'),
                'href' => $this->url->link('product/special', '', 'SSL'),
            ],
            [
                'name' => $this->language->get('menu_education'),
                'href' => $this->url->link('information/education_event', '', 'SSL'),
            ],
            [
                'name' => $this->language->get('menu_contact'),
                'href' => $this->url->link('information/contact', '', 'SSL'),
            ],
            [
                'name' => $this->language->get('menu_consultation'),
                'href' => $this->url->link('information/consultation', '', 'SSL'),
            ],
            [
                'name' => $this->language->get('menu_cosmetologist'),
                'href' => $this->url->link('information/cosmetologist', '', 'SSL'),
            ],
        ];

        $status = true;

        if (isset($this->request->server['HTTP_USER_AGENT'])) {
            $robots = explode("\n", str_replace(array("\r\n", "\r"), "\n", trim($this->config->get('config_robots'))));

            foreach ($robots as $robot) {
                if ($robot && strpos($this->request->server['HTTP_USER_AGENT'], trim($robot)) !== false) {
                    $status = false;

                    break;
                }
            }
        }


        $data['column_left'] = $this->load->controller('common/column_left');


        //customer stuff
        $data['customer_group_id'] = 0;
        if ($this->customer->isLogged()) {
            $data['customer_group_id'] = $this->customer->getGroupId();
        } //else {
//            $customer_group_id = $this->config->get('config_customer_group_id');
//        }
        $customer_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer_group_description where language_id = " . $this->config->get('config_language_id'));
        foreach ($customer_query->rows as $row) {
            if ($row['customer_group_id'] == 1) {
                $data['customer_group_name_client'] = $row['name'];
            } elseif ($row['customer_group_id'] == 2) {
                $data['customer_group_name_cosme'] = $row['name'];
            }
        }
        unset($customer_query);

//close category menu on needed pages
        if ($data['og_url_without_get'] != $data['left_sideBar_links'][4]['href']) {
            // category Menu
            $this->load->model('catalog/category');

            $this->load->model('catalog/product');

            $data['categories'] = array();

            $categories = $this->model_catalog_category->getCategories(60);

            foreach ($categories as $category) {
                if ($category['top']) {
                    // Level 2
                    $children_data = array();

                    $children = $this->model_catalog_category->getCategories($category['category_id']);

                    foreach ($children as $child) {
                        $filter_data = array(
                            'filter_category_id' => $child['category_id'],
                            				
				'filter_sub_category' => true,
				'mfp_disabled' => true
			
                        );

                        $children_data[] = array(
                            'name' => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
                            'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
                        );
                    }

                    // Level 1
                    $data['categories'][] = array(
                        'name' => $category['name'],
                        'children' => $children_data,
                        'column' => $category['column'] ? $category['column'] : 1,
                        'href' => $this->url->link('product/category', 'path=' . $category['category_id'])
                    );
                }
            }
        }

        $data['language'] = $this->load->controller('common/language');
        $data['currency'] = $this->load->controller('common/currency');
        $data['search'] = $this->load->controller('common/search');
        $data['cart'] = $this->load->controller('common/cart');

        // For page specific css
        if (isset($this->request->get['route'])) {
            if (isset($this->request->get['product_id'])) {
                $class = '-' . $this->request->get['product_id'] . ' product-page';
            } elseif (isset($this->request->get['path'])) {
                $class = '-' . $this->request->get['path'] . ' category-page';
            } elseif (isset($this->request->get['manufacturer_id'])) {
                $class = '-' . $this->request->get['manufacturer_id'] . ' manufacturer-page';
            } elseif ($this->request->get['route'] == 'checkout/cart') {
                $class = '-body';
            } else {
                $class = '';
            }

            $data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
        } else {
            $data['class'] = 'common-home';
        }

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/header.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/common/header.tpl', $data);
        } else {
            return $this->load->view('default/template/common/header.tpl', $data);
        }
    }

    protected function getAlterLanguageLinks($links, $lang_cur, $lang_def)
    {
        $result = array();
        if ($this->config->get('config_seo_url')) {
            foreach ($links as $link) {
                if ($link['rel'] == 'canonical') {
                    $url = $link['href'];
                    $schema = parse_url($url, PHP_URL_SCHEME);
                    $server = strtolower($schema) == 'https' ? HTTPS_SERVER : HTTP_SERVER;
                    $cur_lang = substr($url, strlen($server), 2);
                    if ($lang_cur == $cur_lang) {
                        $query = substr($url, strlen($server) + 2);
                    } else {
                        $cur_lang = $lang_def;
                        $query = '/' . str_replace($server, '', $url);
                    }
                    $this->load->model('localisation/language');
                    $languages = $this->model_localisation_language->getLanguages();
                    $active_langs = array();
                    foreach ($languages as $lang) {
                        if ($lang['status']) {
                            $active_langs[] = $lang['code'];
                        }
                    }
                    if (in_array($cur_lang, $active_langs)) {
                        foreach ($active_langs as $lang) {
                            if ($lang_def != $lang) {
                                $result[$lang] = $server . $lang . ($query ? $query : '');
                            } else {
                                $pos = strpos($query, '/');
                                if ($pos == 0) {
                                    $result[$lang] = $server . ($query ? substr_replace($query, '', $pos, 1) : '');
                                    //$result[$lang] = $server.($query ? str_replace('/','',$query) : '');
                                }

                            }
                        }
                    }
                }
            }
        }
        return $result;
    }
}
