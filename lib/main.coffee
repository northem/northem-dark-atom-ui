root = document.documentElement;

module.exports =
  activate: (state) ->
    atom.config.observe 'northem-dark-atom-ui.tabSizing', (noFullWidth) ->
      setTabSizing(noFullWidth)

  deactivate: ->
    unsetTabSizing()

setTabSizing = (noFullWidth) ->
  if (noFullWidth)
    unsetTabSizing()
  else
    root.setAttribute('theme-northem-dark-atom-ui-tabsizing', "nofullwidth")

unsetTabSizing = ->
  root.removeAttribute('theme-northem-dark-atom-ui-tabsizing')
