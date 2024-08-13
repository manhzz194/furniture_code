
<div id="gotoTop" class="icon-angle-up"></div>

<script src="{{ asset('themes/frontend/furniture/js/jquery.js') }}"></script>
<script src="{{ asset('themes/frontend/furniture/js/plugins.min.js') }}"></script>


<script src="{{ asset('themes/frontend/furniture/js/functions.js') }}"></script>

<script>
  $(function() {

    $("#form-booking").submit(function(e) {
    //  $(".form-process").show();
      e.preventDefault();
      var form = $(this);
      var url = form.attr('action');
      $.ajax({
        type: "POST",
        url: url,
        data: form.serialize(),
        success: function(response) {
          form[0].reset();
        //  $(".form-process").hide();
          alert(response.message);
          location.reload();
        },
        error: function(response) {
        //  $(".form-process").hide();
          // Get errors
          if (typeof response.responseJSON.errors !== 'undefined') {
            var errors = response.responseJSON.errors;
            // Foreach and show errors to html
            var elementErrors = '';
            $.each(errors, function(index, item) {
              if (item === 'CSRF token mismatch.') {
                item = "@lang('CSRF token mismatch.')";
              }
              elementErrors += '<p>' + item + '</p>';
            });
            $(".form-result").html(elementErrors);
          } else {
            var errors = response.responseJSON.message;
            if (errors === 'CSRF token mismatch.') {
              $(".form-result").html("@lang('CSRF token mismatch.')");
            } else if (errors === 'The given data was invalid.') {
              $(".form-result").html("@lang('The given data was invalid.')");
            } else {
              $(".form-result").html(errors);
            }
          }
        }
      });
    });

    // Form ajax default
    $(".form_ajax").submit(function(e) {
      e.preventDefault();
      var form = $(this);
      var url = form.attr('action');
      $.ajax({
        type: "POST",
        url: url,
        data: form.serialize(),
        success: function(response) {
          form[0].reset();
          alert(response.message);
          location.reload();
        },
        error: function(response) {
          // Get errors
          console.log(response);
          var errors = response.responseJSON.errors;
          // Foreach and show errors to html
          var elementErrors = '';
          $.each(errors, function(index, item) {
            if (item === 'CSRF token mismatch.') {
              item = "@lang('CSRF token mismatch.')";
            }
            elementErrors += '<p>' + item + '</p>';
          });
        }
      });
    });

    // Add to cart
    $(document).on('click', '.add-to-cart', function() {
      let _root = $(this);
      let _html = _root.html();
      let _id = _root.attr("data-id");
      let _quantity = _root.attr("data-quantity") ?? $("#quantity").val();
      if (_id > 0) {
        _root.html("@lang('Processing...')");
        var url = "{{ route('frontend.order.add_to_cart') }}";
        $.ajax({
          type: "POST",
          url: url,
          data: {
            "_token": "{{ csrf_token() }}",
            "id": _id,
            "quantity": _quantity
          },
          success: function(data) {
            _root.html(_html);
            window.location.reload();
          },
          error: function(data) {
            // Get errors
            var errors = data.responseJSON.message;
            alert(errors);
            location.reload();
          }
        });
      }
    });

    $(".update-cart").change(function(e) {
      e.preventDefault();
      var ele = $(this);
      $.ajax({
        url: '{{ route('frontend.order.cart.update') }}',
        method: "PATCH",
        data: {
          _token: '{{ csrf_token() }}',
          id: ele.parents("tr").attr("data-id"),
          quantity: ele.parents("tr").find(".qty").val()
        },
        success: function(response) {
          window.location.reload();
        }
      });
    });

    $(".remove-from-cart").click(function(e) {
      e.preventDefault();
      var ele = $(this);
      if (confirm("{{ __('Are you sure want to remove?') }}")) {
        $.ajax({
          url: '{{ route('frontend.order.cart.remove') }}',
          method: "DELETE",
          data: {
            _token: '{{ csrf_token() }}',
            id: ele.parents("tr").attr("data-id")
          },
          success: function(response) {
            window.location.reload();
          }
        });
      }
    });
    $(".remove-item").click(function(e) {
      e.preventDefault();
      var ele = $(this);
      if (confirm("{{ __('Are you sure want to remove?') }}")) {
        $.ajax({
          url: '{{ route('frontend.order.cart.remove') }}',
          method: "DELETE",
          data: {
            _token: '{{ csrf_token() }}',
            id: ele.attr("data-id")
          },
          success: function(response) {
            window.location.reload();
          }
        });
      }
    });

  });

  const filterArray = (array, fields, value) => {
    fields = Array.isArray(fields) ? fields : [fields];
    return array.filter((item) => fields.some((field) => item[field] === value));
  };
</script>

@isset($web_information->source_code->footer)
{!! $web_information->source_code->footer !!}
@endisset