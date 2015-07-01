@translate = (pt) ->
  da = pt.toLowerCase()

  da = da.replace(/v/gi, 'f')
  da = da.replace(/b/gi, 'p')
  da = da.replace(/j/gi, 'x')
  da = da.replace(/d/gi, 't')
  da = da.replace(/ç/gi, 'ss')

  da = da.replace(/ge/gi, 'che')
  da = da.replace(/gê/gi, 'chê')
  da = da.replace(/gé/gi, 'ché')

  da = da.replace(/gi/gi, 'chi')
  da = da.replace(/gí/gi, 'chí')

  da = da.replace(/gn/gi, 'kn')

  da = da.replace(/ce/gi, 'sse')
  da = da.replace(/cê/gi, 'ssê')
  da = da.replace(/cé/gi, 'ssé')

  da = da.replace(/ci/gi, 'ssi')
  da = da.replace(/cí/gi, 'ssí')

  da = da.replace(/co/gi, 'ko')
  da = da.replace(/cô/gi, 'kô')
  da = da.replace(/có/gi, 'kó')

  da = da.replace(/cr/gi, 'kr')
  da = da.replace(/cl/gi, 'kl')

  da = da.replace(/qu/gi, 'k')
  da = da.replace(/gue/gi, 'ke')
  da = da.replace(/gui/gi, 'ki')

  da = da.replace(/ga/gi, 'ka')
  da = da.replace(/go/gi, 'ko')

  da = da.replace(/sa/gi, 'ssa')

  da = da.replace(/luichi/i, 'luíz')
  da = da.replace(/kleyton/i, 'krairtom')
  da = da.replace(/camara/i, 'camera')
  da = da.replace(/câmara/i, 'câmera')
  da = da.replace(/lakarto/i, 'larkato')
  da = da.replace(/manopla/i, 'manapóla')
  da = da.replace(/plorifera/i, 'polisfera')
  da = da.replace(/tapua/i, 'tauba')
  da = da.replace(/tápua/i, 'tauba')
  da = da.replace(/xeti/i, 'jandai')
  da = da.replace(/pathfinter/i, 'pétfinter')
  da = da.replace(/ssantpoint/i, 'savepoint')
  da = da.replace(/maluko/i, 'maluvo')
  da = da.replace(/ritículo/i, 'redículo')
  da = da.replace(/nele/i, 'neli')
  da = da.replace(/patoo/i, 'baduco')

  da

$ ->
  $pt_input = $('#pt')
  $da_input = $('#da')
  $translate_btn = $('#translate')
  $footer = $('footer')

  $footer.width($footer.width() - 40)

  $translate_btn.on 'click', (event) =>
    event.preventDefault()
    pt = $pt_input.val()
    $da_input.val(translate(pt))

