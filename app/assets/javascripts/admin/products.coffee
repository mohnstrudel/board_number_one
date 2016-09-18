# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery(document).ready ->


  'use strict'
  # Init Theme Core    
  Core.init()
  # Init Demo JS    
  Demo.init()
  # Init Select2 - Basic Single
  $('.select2-single').select2
    placeholder: 'Выберите значение...'
  
  # Init Select2 - Basic Multiple
  $('.select-multiple-colors').select2
    placeholder: 'Выбрать доступные цвета для товара'
    allowClear: true
    # minimumInputLength: 3

  # Init Select for Fabrics - Basic Multiple
  $('.select-multiple-fabrics').select2
    placeholder: 'Выбрать доступные ткани для товара'
    allowClear: true
    # minimumInputLength: 3
  
  # Init Select for Patterns - Basic Multiple
  $('.select-multiple-patterns').select2
    placeholder: 'Выбрать доступные узоры для товара'
    allowClear: true
    # minimumInputLength: 3
  
  # Init Select for Patterns - Basic Multiple
  $('.select-multiple-sizes').select2
    placeholder: 'Выбрать доступные размеры для товара'
    allowClear: true
    # minimumInputLength: 3

  # Init Select for Borders - Basic Multiple
  $('.select-multiple-borders').select2
    placeholder: 'Выбрать доступные бортики для товара'
    allowClear: true
    # minimumInputLength: 3

  # Init Select2 - Contextuals (via html classes)
  $('.select2-primary').select2()
  # select2 contextual - primary
  $('.select2-success').select2()
  # select2 contextual - success
  
  # This is the current used Select2!
  # $('.select2-info').select2
    # minimumInputLength: 3

  $('.select2-info').select2()



  # select2 contextual - info
  $('.select2-warning').select2()
  # select2 contextual - warning  

  # Init Boostrap Multiselects
  $('#multiselect1').multiselect()

  $('#multiselect2').multiselect
    includeSelectAllOption: true

  $('#multiselect3').multiselect()
  $('#multiselect4').multiselect
    enableFiltering: true

  $('#multiselect5').multiselect
    buttonClass: 'multiselect dropdown-toggle btn btn-default btn-primary'
  
  $('#multiselect6').multiselect
    buttonClass: 'multiselect dropdown-toggle btn btn-default btn-info'
  
  $('#multiselect7').multiselect
    buttonClass: 'multiselect dropdown-toggle btn btn-default btn-success'
  
  $('#multiselect8').multiselect
    buttonClass: 'multiselect dropdown-toggle btn btn-default btn-warning'
  

  # Init DateRange plugin
  $('#daterangepicker1').daterangepicker()
  # Init DateRange plugin


  # ---
  # generated by js2coffee 2.2.0
  return