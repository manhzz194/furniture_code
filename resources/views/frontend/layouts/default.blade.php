<!DOCTYPE html>
<html lang="{{ $locale ?? 'vi' }}">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>
    {{ $seo_title ?? ($page->title ?? ($web_information->information->seo_title ?? '')) }}
  </title>
  <link rel="icon" href="{{ $web_information->image->favicon ?? '' }}" type="image/x-icon">
  {{-- Print SEO --}}
  @php
    $seo_title = $seo_title ?? ($page->title ?? ($web_information->information->seo_title ?? ''));
    $seo_keyword = $seo_keyword ?? ($page->keyword ?? ($web_information->information->seo_keyword ?? ''));
    $seo_description = $seo_description ?? ($page->description ?? ($web_information->information->seo_description ?? ''));
    $seo_image = $seo_image ?? ($page->json_params->og_image ?? ($web_information->image->seo_og_image ?? ''));
  @endphp
  <meta name="description" content="{{ $seo_description }}" />
  <meta name="keywords" content="{{ $seo_keyword }}" />
  <meta name="news_keywords" content="{{ $seo_keyword }}" />
  <meta property="og:image" content="{{ $seo_image }}" />
  <meta property="og:title" content="{{ $seo_title }}" />
  <meta property="og:description" content="{{ $seo_description }}" />
  <meta property="og:url" content="{{ Request::fullUrl() }}" />

  <meta name="copyright" content="{{ $web_information->information->site_name ?? '' }}" />
  <meta name="author" content="{{ $web_information->information->site_name ?? '' }}" />
  <meta name="robots" content="index,follow" />

  {{-- End Print SEO --}}
  {{-- Include style for app --}}
  @include('frontend.panels.styles')
  {{-- Styles custom each page --}}
  @stack('style')

  @stack('schema')
</head>

<body class="stretched">

  {{--Cart Panel Background--}}
  <div class="body-overlay"></div>

  {{--Cart Side Panel--}}
  <div id="side-panel" class="bg-white">
    {{-- Cart Side Panel Close Icon --}}
    <div id="side-panel-trigger-close" class="side-panel-trigger">
      <a href="#"><i class="icon-line-cross"></i></a>
    </div>

    <div class="side-panel-wrap">
      <div class="top-cart d-flex flex-column h-100">
        <div class="top-cart-title">
          <h4>
            Shopping Cart
            <small class="bg-color-light icon-stacked text-center rounded-circle color">
            {{ session('cart') ? count(session('cart')) : 0 }}
            </small>
          </h4>
        </div>

        <!-- Cart Items
      ============================================= -->
        <div class="top-cart-items">
          @if (session('cart'))
            @php $total = 0; @endphp
            @foreach (session('cart') as $id => $details)
              @php
                $total += $details['price'] * $details['quantity'];
                $alias_detail = Str::slug($details['title']);
                $url_link = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $alias_detail, $id, 'detail', 'san-pham');
              @endphp
              
              <div class="top-cart-item">
                <div class="top-cart-item-image border-0">
                  <a href="{{ $url_link }}"><img src="{{ $details['image_thumb'] ?? $details['image'] }}" alt="Cart Image 1"/></a>
                </div>
                <div class="top-cart-item-desc">
                  <div class="top-cart-item-desc-title">
                    <a href="{{ $url_link }}" class="fw-medium">{{ $details['title'] }}</a>
                    <span class="top-cart-item-price d-block">
                      {{ isset($details['price']) && $details['price'] > 0 ? number_format($details['price']).' đ' : __('Contact') }}
                    </span>
                    <div class="d-flex mt-2">
                      <a href="{{ route('frontend.order.cart') }}" class="fw-normal text-black-50 text-smaller"><u>Edit</u></a>
                      <a href="javascript:void(0)" class="remove-item fw-normal text-black-50 text-smaller ms-3" data-id="{{ $id }}">
                        <u>Remove</u>
                      </a>
                    </div>
                  </div>
                  <div class="top-cart-item-quantity">x {{ $details['quantity'] }}</div>
                </div>
              </div>
            @endforeach
          @endif
        </div>

        <!-- Cart Saved Text
      ============================================= -->
        <div class="py-2 px-3 mt-auto text-black-50 text-smaller bg-color-light">
          <span>
            <img src="{{ asset('images/check.png') }}" alt="">
            You save 1.000.000 đ on this order.
          </span>
        </div>

        <!-- Cart Price and Button
      ============================================= -->
        <div class="top-cart-action flex-column align-items-stretch">
          <div class="d-flex justify-content-between align-items-center mb-2">
            <small class="text-uppercase ls1">Total</small>
            <h4 class="fw-medium font-body mb-0">
              {{ session('cart') ? number_format($total).' đ' : 0 }}
            </h4>
          </div>
          <a href="{{ route('frontend.order.cart') }}" class="button btn-block text-center m-0 fw-normal">
            <i style="position: relative; top: -2px">
              <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="#FFF" viewBox="0 0 256 256">
                <rect width="256" height="256" fill="none"></rect>
                <path d="M40,192a16,16,0,0,0,16,16H216a8,8,0,0,0,8-8V88a8,8,0,0,0-8-8H56A16,16,0,0,1,40,64Z" opacity="0.2"></path>
                <path d="M40,64V192a16,16,0,0,0,16,16H216a8,8,0,0,0,8-8V88a8,8,0,0,0-8-8H56A16,16,0,0,1,40,64v0A16,16,0,0,1,56,48H192"
                  fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="10">
                </path>
                <circle cx="180" cy="144" r="12"></circle>
              </svg>
            </i>
            Checkout
          </a>
        </div>
      </div>
    </div>
  </div>

  {{-- Document Wrapper --}}
  <div id="wrapper" class="clearfix">

    @include('frontend.blocks.header.styles.default')
  
    {{-- Foreach and print block content by current page --}}
    
    @if (isset($blocks_selected))
      @foreach ($blocks_selected as $block)
        @if (\View::exists('frontend.blocks.' . $block->block_code . '.index'))
          @include('frontend.blocks.' . $block->block_code . '.index')
        @else
          {{ 'View: frontend.blocks.' . $block->block_code . '.index do not exists!' }}
        @endif
      @endforeach
    @endif
  
    @include('frontend.blocks.footer.styles.default')
  
    {{-- Include fixed alert --}}
    @include('frontend.components.sticky.alert')
    {{-- Include scripts --}}
    @include('frontend.panels.scripts')
    {{-- Scripts custom each page --}}
    @stack('script')
    {{-- Include sticky contact --}}
    @include('frontend.components.sticky.contact')
  
    {{-- Include popup --}}
    @include('frontend.components.popup.default')

  </div>

</body>

</html>
