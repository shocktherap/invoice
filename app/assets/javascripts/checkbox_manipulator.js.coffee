$ ->
  $('[data-select]').change ->
    $this      = $ @
    $name      = $this.attr 'name'
    $childrens = $ "[name='#{ $name }[]']"

    $childrens.prop 'checked', $this.is(':checked')

  $('[data-batch-for]').click ->
    $this         = $ this
    target        = $this.data('batch-for')
    url           = $this.data('url')
    params_prefix = $this.data('params-prefix')
    token         = $this.data('authenticity-token')
    checkeds      = $("input:checked[name='#{ target }[]']")

    unless checkeds.length
      alert 'Please select at least one item'
      return

    return unless confirm 'Are you sure?'

    params = checkeds.map ->
      return $(this).data('customerIds') #>Object{ customer_ids: 1 }
    .get()

    $form = $ '<form>', action: url, method: 'POST', class: 'hidden'
    $form.append $ "<input>", value: token, name: 'authenticity_token'
    $form.append $ "<input>", value: JSON.stringify(params), name: target

    $form.appendTo('body').submit()
