## plot options
verticalLayout(
  uiOutput('plotTypeCtrl'),
  
  fluidRow(
    column(6, uiOutput('xCtrl')),
    column(6, uiOutput('yCtrl'))),
  
  uiOutput('columnsCtrl'),  # for ggpairs
  
  ## widgets to show/hide advanced control widgets
  div(
    uiOutput('showAesWgtsCtrl'),
    source('./views/plot/aesCtrlsUI.R', local=TRUE)$value,
    class="widblock"),
  
  conditionalPanel('input.plotType != "pairs"',
    div(
      uiOutput('showFacetWgtsCtrl'),
      source('./views/plot/facetCtrlsUI.R', local=TRUE)$value,
      class="widblock"),
    
    div(
      uiOutput('showXYRangeWgtsCtrl'),
      source('./views/plot/xyRangeCtrlsUI.R', local=TRUE)$value,
      class="widblock"),
    
    div(
      uiOutput('showThemeWgtsCtrl'),
      source('./views/plot/labelAndStyleCtrlsUI.R', local=TRUE)$value,
      class="widblock"),
    
    div(
      uiOutput('showDSTypeAndPlotAggWgtsCtrl'),
      source('./views/plot/DSTypeAndPlotAggCtrlsUI.R', local=TRUE)$value,
      class="widblock")
    
    #uiOutput('showPlotAggWgtCtrl')
  )
)