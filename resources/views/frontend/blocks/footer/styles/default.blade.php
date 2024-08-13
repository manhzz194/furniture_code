<footer id="footer" class="border-0 bg-white mt-0">
  <div class="container">
    <div class="footer-widgets-wrap py-lg-6">
      <div class="row col-mb-30">
        @isset($menu)
          @php
            $footer_menu = $menu->filter(function ($item, $key) {
                return $item->menu_type == 'footer' && ($item->parent_id == null || $item->parent_id == 0);
            });
            
            $content = '';
            foreach ($footer_menu as $main_menu) {
                $url = $title = '';
                $title = isset($main_menu->json_params->title->{$locale}) && $main_menu->json_params->title->{$locale} != '' ? $main_menu->json_params->title->{$locale} : $main_menu->name;
                $content .= '<div class="col-lg-2 col-md-3 col-6"><div class="widget widget_links widget-li-noicon">';
                $content .= '<h4 class="ls0 nott">' . $title . '</h4>';
                $content .= '<ul class="list-unstyled iconlist ms-0">';
                foreach ($menu as $item) {
                    if ($item->parent_id == $main_menu->id) {
                        $title = isset($item->json_params->title->{$locale}) && $item->json_params->title->{$locale} != '' ? $item->json_params->title->{$locale} : $item->name;
                        $url = $item->url_link;
            
                        $active = $url == url()->current() ? 'active' : '';
            
                        $content .= '<li><a href="' . $url . '">' . $title . '</a>';
                        $content .= '</li>';
                    }
                }
                $content .= '</ul>';
                $content .= '</div></div>';
            }
            echo $content;
          @endphp
        @endisset
        
        <!-- Footer Col 5 -->
        <div class="col-lg-4">
          <div class="widget clearfix" data-loader="button">
            <h4>Đăng kí</h4>
            <h5 class="font-body op-04">
              <strong>Đăng kí</strong> ngay để nhận thông tin mới nhất!
            </h5>
            <div class="widget-subscribe-form-result"></div>
            <form id="widget-subscribe-form" action="{{ route('frontend.contact.store') }}" method="post" class="mb-0 form_ajax">
              @csrf
              <div class="input-group">
                <input type="email" id="email" name="email" class="form-control" placeholder="Email của bạn.."
                  required />
                <button class="btn btn-dark bg-color px-3 input-group-text" type="submit">
                  Đăng kí
                </button>
                <input type="hidden" name="is_type" value="call_request">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- .footer-widgets-wrap end -->
  </div>

  <!-- Copyrights
  ============================================= -->
  <div id="copyrights" class="py-3 bg-color-light">
    <div class="container">
      <div class="d-flex justify-content-between op-04">
        <span>&copy; 2024 Bản quyền thuộc về GBD</span>
      </div>
    </div>
  </div>
  <!-- #copyrights end -->
</footer>
