$ ->
  $('#conformidade_data,#search_data_gte,#search_data_lte').datepicker({
  monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto',
   'Setembro', 'Outubro', 'Novembro', 'Dezembro']
  dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S']
  dateFormat: 'dd/mm/yy'
  })

  $('#conformidade_caixa').mask('999/2099')
  $('#conformidade_processo').mask('9999/2099')

  # reset
  $('[type=reset]').click ->
    form= $(this).closest('form')
    form.find('input[type=text]').val('')
    form.submit
    false