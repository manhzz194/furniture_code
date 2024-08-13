@extends('frontend.layouts.default')

@php

  $id = $detail->id;
  $title = $detail->json_params->title->{$locale} ?? $detail->title;
  $brief = $detail->json_params->brief->{$locale} ?? null;
  $price = $detail->json_params->price ?? null;
  $price_old = $detail->json_params->price_old ?? null;
  $content = $detail->json_params->content->{$locale} ?? null;
  $image = $detail->image != '' ? $detail->image : null;
  $image_thumb = $detail->image_thumb != '' ? $detail->image_thumb : null;
  $date = date('H:i d/m/Y', strtotime($detail->created_at));
  
  // For taxonomy
  $taxonomy_json_params = json_decode($detail->taxonomy_json_params);
  $taxonomy_title = $taxonomy_json_params->title->{$locale} ?? $detail->taxonomy_title;
  $image_background = $taxonomy_json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? null);
  $taxonomy_alias = Str::slug($taxonomy_title);
  $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $taxonomy_alias, $detail->taxonomy_id);
  
  $seo_title = $detail->json_params->seo_title ?? $title;
  $seo_keyword = $detail->json_params->seo_keyword ?? null;
  $seo_description = $detail->json_params->seo_description ?? $brief;
  $seo_image = $image ?? ($image_thumb ?? null);
  
@endphp

@section('content')

  <section id="page-title" style="background-image: url('{{ $image_background }}'); background-size: cover;"
    data-bottom-top="background-position:0px 300px;" data-top-bottom="background-position:0px -300px;">
    <div id="particles-line"></div>
    <div class="container clearfix">
      <h1 class="text-center">{{ $title }}</h1>
    </div>
  </section>

  <section id="content">
    <div class="content-wrap" style="overflow: visible">
      <div class="container clearfix">
        <div class="single-product">
          <div class="product">
            <div class="row gutter-40">
              <div class="col-md-6">
                <div class="product-image">
                  <img src="{{ $image }}" alt="Image 1"/>
                  <div id="oc-shop" class="owl-carousel image-carousel carousel-widget custom-js">
                  </div>
                  <div class="sale-flash badge bg-danger p-2">Sale!</div>
                </div>
                <!-- Product Single - Gallery End -->
              </div>

              <div class="col-md-6 product-desc position-lg-sticky h-100">
                <h2>{{ $title }}</h2>
                <div class="d-flex align-items-center justify-content-between">
                  <!-- Product Single - Price
                ============================================= -->
                  <div class="product-price">
                    <del>{{ $price_old.'đ' ?? '' }}</del> <ins>{{ number_format($price, 0,',','.')  }}đ</ins>
                  </div>
                  <!-- Product Single - Price End -->
                </div>

                <div class="line"></div>

                <!-- Product Single - Quantity & Cart Button
              ============================================= -->
                <form class="cart mb-0 d-flex justify-content-between align-items-center" enctype="multipart/form-data">
                  <div class="quantity clearfix">
                    <input type="button" value="-" class="minus" />
                    <input type="number" step="1" min="1" name="quantity" value="1" title="Qty" class="qty" id="quantity"/>
                    <input type="button" value="+" class="plus" />
                  </div>
                  <button type="button" class="add-to-cart button m-0" data-id="{{ $id }}">
                    Add to cart
                  </button>
                </form>
                <!-- Product Single - Quantity & Cart Button End -->

                <div class="line"></div>

                <p>{{ $brief }}</p>
                <!-- Product Single - Short Description End -->

                <!-- Product Single - Share
              ============================================= -->
                <div
                  class="si-share d-flex justify-content-between align-items-center mt-4"
                >
                  <span>Share:</span>
                  <div>
                    <a href="http://www.facebook.com/sharer/sharer.php?u={{ Request::fullUrl() }}"
                      class="social-icon si-borderless si-facebook">
                      <i class="icon-facebook"></i>
                      <i class="icon-facebook"></i>
                    </a>
                    <a href="https://twitter.com/intent/tweet?url={{ Request::fullUrl() }}"
                      class="social-icon si-borderless si-twitter">
                      <i class="icon-twitter"></i>
                      <i class="icon-twitter"></i>
                    </a>
                    <a href="https://www.instagram.com/cws/share?url={{ Request::fullUrl() }}"
                      class="social-icon si-borderless si-instagram">
                      <i class="icon-instagram"></i>
                      <i class="icon-instagram"></i>
                    </a>
                  </div>
                </div>
                <!-- Product Single - Share End -->
              </div>
          </div>
        </div>

        <div class="line"></div>

        <div class="w-100">
          @if (isset($relatedPosts) && count($relatedPosts) > 0)
            <h4 class="title-widget text-uppercase mt-4">@lang('Related Products')</h4>
            <div class="owl-carousel product-carousel carousel-widget"
                data-margin="30"
                data-pagi="false"
                data-autoplay="5000"
                data-items-xs="1"
                data-items-md="2"
                data-items-lg="3"
                data-items-xl="4">
              @foreach ($relatedPosts as $item)
                @php
                  $title_item = $item->json_params->title->{$locale} ?? $item->title;
                  $brief = $item->json_params->brief->{$locale} ?? $item->brief;
                  $price_item = $item->json_params->price ?? null;
                  $price_old_item = $item->json_params->price_old ?? null;
                  $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
                  $date = date('d/m/Y', strtotime($item->created_at));
                  // Viet ham xu ly lay slug
                  $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $item->alias ?? $title_item, $item->id, 'detail', $item->taxonomy_title);
                @endphp
                <div class="oc-item">
                  <div class="product">
                    <div class="product-image">
                      <a href="{{ $alias }}">
                        <img style="height: 300px" src="{{ $image }}" alt="YELLOW DRESS"/>
                      </a>
                      <div class="bg-overlay">
                        <div
                          class="bg-overlay-content align-items-end justify-content-between"
                          data-hover-animate="fadeIn"
                          data-hover-speed="400"
                        >
                          <a href="#" class="btn me-2"
                            ><i class="icon-shopping-cart"></i
                          ></a>
                          <!-- <a
                            href="include/ajax/shop-item.html"
                            class="btn "
                            data-lightbox="ajax"
                            ><i class="icon-line-expand"></i
                          ></a> -->
                        </div>
                        <div class="bg-overlay-bg bg-transparent"></div>
                      </div>
                    </div>
                    <div class="product-desc center">
                      <div class="product-title">
                        <h3><a href="{{ $alias }}">{{ $title_item }}</a></h3>
                      </div>
                      <div class="product-price">
                        <ins>{{ number_format($price_item, 0,',','.')  }}đ</ins>
                      </div>
                    </div>
                  </div>
                </div>
              @endforeach
            </div>
          @endif
        </div>
      </div>
    </div>
  </section>

  {{-- End content --}}
@endsection
