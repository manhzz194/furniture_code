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
  @endphp
  <div class="container-fluid">
    {{-- Heading Title --}}
    <div class="text-center mt-6 mb-5">
      <h2 class="h1 fw-normal mb-4">
        {{ $title }}
      </h2>
      <a href="{{ $url_link }}"
        class="button button-small button-border m-0 button-dark border-width-1 border-default px-4 h-bg-color"
        ><i class="icon-line-grid"></i> {{ $url_link_title }}</a
      >
    </div>
    <div class="row item-categories gutter-20">
      @if ($block_childs)
        @foreach ($block_childs as $item)
          @php
            $title_child = $item->json_params->title->{$locale} ?? $item->title;
            $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
            $content_child = $item->json_params->content->{$locale} ?? $item->content;
            $image_child = $item->image != '' ? $item->image : null;
            $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
            $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
            $icon = $item->icon != '' ? $item->icon : '';
            $style = $item->json_params->style ?? '';
          @endphp
          <div class="col-lg-4 col-md-6">
            <a href="{{ $url_link }}" class="d-block h-op-09 op-ts"
              style=" background: url('{{ $image_child }}')
                  no-repeat center center;
                background-size: cover;
                height: 340px;">
              <h5 class="text-uppercase ls1 bg-white mb-0">{{ $title_child }}</h5>
            </a>
          </div>
        @endforeach
      @endif
    </div>
  </div>

@endif
