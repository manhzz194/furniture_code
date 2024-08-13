@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : '';
    $image_background = $block->image_background != '' ? $block->image_background : '';
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    $style = isset($block->json_params->style) && $block->json_params->style == 'slider-caption-right' ? 'd-none' : '';
    
    // Filter all blocks by parent_id
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });

    $items = [];
    $i = 0;
    foreach ($block_childs as $item) {
      $items[$i] = $item;
      $i++;
    }

    $block_service = $blocks->filter(function ($item, $key) use ($block, $items) {
      return $item->parent_id == $items[0]->id;
    });
    $block_logo1 = $blocks->filter(function ($item, $key) use ($block, $items) {
      return $item->parent_id == $items[1]->id;
    });
    $block_logo2 = $blocks->filter(function ($item, $key) use ($block, $items) {
      return $item->parent_id == $items[2]->id;
    });

  @endphp

  <section id="content">
    <div class="content-wrap py-0">

      {{-- 1. Section Why Choose Us --}}
      <div class="section bg-color-light mt-0">
        <div class="container text-center mw-md topmargin bottommargin">
          <h2 class="display-4 fw-normal">
            {{ $title }}
          </h2>
          <div class="clear"></div>

          <!-- Features Area -->
          <div class="row col-mb-50 mb-0 mt-5 justify-content-center">
            @if ($block_service)
              @foreach ($block_service as $item)
                @php
                  $title = $item->json_params->title->{$locale} ?? $item->title;
                  $brief = $item->json_params->brief->{$locale} ?? $item->brief;
                  $content = $item->json_params->content->{$locale} ?? $item->content;
                  $image = $item->image != '' ? $item->image : null;
                  $image_background = $item->image_background != '' ? $item->image_background : null;
                  $video = $item->json_params->video ?? null;
                  $video_background = $item->json_params->video_background ?? null;
                  $url_link = $item->url_link != '' ? $item->url_link : '';
                  $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
                  $icon = $item->icon != '' ? $item->icon : '';
                  $style = isset($item->json_params->style) && $item->json_params->style == 'slider-caption-right' ? 'd-none' : '';
                  
                  $image_for_screen = null;
                  if ($agent->isDesktop() && $image_background != null) {
                      $image_for_screen = $image_background;
                  } else {
                      $image_for_screen = $image;
                  }
                  
                @endphp
                <div class="col-sm-6 col-lg-4">
                  <div class="feature-box fbox-center fbox-dark fbox-plain">
                    <div class="fbox-icon">
                      <img src="{{ $image }}" alt="">
                    </div>
                    <div class="fbox-content">
                      <h2 class="nott fw-medium h4 mb-4">{{ $title }}</h2>
                      <p class="">
                        {{ $brief }}
                      </p>
                    </div>
                  </div>
                </div>
              @endforeach
            @endif
          </div>
          <!-- Brand Logo Area -->
          <div class="row justify-content-center">
            <div class="col-lg-9">
              <div class="row justify-content-center align-items-center text-center mx-auto">
                @if ($block_logo1)
                  @foreach ($block_logo1 as $item)
                    @php
                      $image = $item->image != '' ? $item->image : null;
                    @endphp
                    <div class="col center op-05">
                      <img src="{{ $image }}" alt="" width="100"/>
                    </div>
                  @endforeach
                @endif
                
              </div>
              <div class="row justify-content-center align-items-center mx-auto text-center mt-3">
                @if ($block_logo2)
                  @foreach ($block_logo2 as $item)
                    @php
                      $image = $item->image != '' ? $item->image : null;
                    @endphp
                    <div class="col center op-05">
                      <img src="{{ $image }}" alt="" width="100"/>
                    </div>
                  @endforeach
                @endif
                
              </div>
            </div>
          </div>
        </div>
      </div>
  <!-- Section End -->
 
@endif
