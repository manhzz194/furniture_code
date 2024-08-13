@if ($block)
    @php
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $content = $block->json_params->content->{$locale} ?? $block->content;
        $image = $block->image != '' ? $block->image : '';
        $image_background = $block->image_background != '' ? $block->image_background : '';
        $url_link = $block->url_link != '' ? $block->url_link : '';
        $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;

        $block_childs = $blocks->filter(function ($item, $key) use ($block) {
            return $item->parent_id == $block->id;
        });
    @endphp
    <section class="category">
        <div class="">
            <div class="category-main">
                @if ($block_childs)
                    @foreach ($block_childs as $item)
                        @php
                            $image = $item->image != '' ? $item->image : null;
                        @endphp
                        <div class="category-item">
                            <div class="category-item-image">
                                <img src="{{ $image }}" alt="Wheels & Tires" />
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
            <div class="category-footer gap-3 flex-wrap">
                <p>{{ $title }}</p>
                <a href="{{ $url_link }}"><button type="button" class="start-cate">{{ $url_link_title }} <img
                            src="{{ asset('themes/frontend/watches/images/right-icon.svg') }}"
                            alt="slide"></button></a>
            </div>
        </div>
    </section>
@endif
