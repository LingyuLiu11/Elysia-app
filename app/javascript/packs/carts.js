$(document).on('change', '#cart_product_number', function() {
  form = $(this).closest('form');
  form.submit();
});