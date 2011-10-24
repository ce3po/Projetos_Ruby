$ ->
  $('#conformidade_data').datepicker({
  monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto',
   'Setembro', 'Outubro', 'Novembro', 'Dezembro']
  dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S']
  dateFormat: 'dd/mm/yy'
  })

  $('#conformidade_caixa').mask('999/2099')
  $('#conformidade_processo').mask('9999/2099')
    