# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "Industry",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Industry/Index of Industrial Production/0210046E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/ac63495e-c1b2-4667-a171-626e20526db7"
  ),
  el=list(
    subtheme = "Industry",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Industry/Index of Industrial Production/0210046G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/ce572af8-e1a3-4b1c-9ccb-6dc23c416277"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value   = "Index of Industrial Production - Timeseries (Base Years 2021=100), Annual",
    col_date    = "YEAR",
    col_trnsp = list("INDEX"),    
    col_trnsp_colnames = list(c("% change - previous year")),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = ""
  ),
  el=list(
    col_value   = "Δείκτης Βιομηχανικής Παραγωγής - Χρονολογικές Σειρές (Έτος Βάσης 2021=100), Ετήσια",
    col_date    = "ΕΤΟΣ",
    col_trnsp = list("ΔΕΙΚΤΗΣ"),  
    col_trnsp_colnames = list(c("% μεταβολή - προηγούμενο έτος")),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = ""
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en = "Index of Industrial Production (% change - previous year)",
    el = "Δείκτης Βιομηχανικής Παραγωγής (% μεταβολή - προηγούμενο έτος)"
  ),
  gen=list(
    margin_b = list(l = 100, r = 100, b = 50, t = 50), # figure margin from border
    standoff = 10,           # distance axes labels from axes
    chart_type = "bar"     # "bar" or "line"
  ),
  fonts = list(
    font_t = "Verdana",     # font type
    font_c = "black",       # font color
    font_s = 14             # font size
  ),
  hover = list(
    hover_t = "x unified",  # hover type # Set to "x" to have separate tooltips for each graph line/bar shown
    hover_c = "black",  # hover font color
    hover_b = "black",  # hover border color
    hover_bg = "white",     # hover background color # Set to NULL to have separate background colors for each graph line/bar shown (if hover_t = "x")
    hover_xf = list(
      en="Year: %Y",
      el="Έτος: %Y"
    )      # hover format of x-axis data
  ),
  spikeline = list(
    spike_t = 'dash',      # spikeline type e.g. 'solid' OR 'dash'
    spike_c = "black",  # spikeline color
    spike_s = 2             # spikeline size
  ),
  showlegend = TRUE,
  legend = list(
    x = 0.5,
    y = -0.07,
    xanchor = "center",
    yanchor = "top",
    orientation = "h",
    itemwidth = 120
  ),
  show_updmenu = FALSE,
  updmenus = list(
    updm_t = "buttons",     #"buttons" --> radio buttons, "dropdown" --> dropdown list
    updm_x = 0.05          # position of menus along x-axis
  ),
  xaxis = list(
    xaxis_h = "",      # x-axis header
    xaxis_la = 0,         # x-axis angle of labels
    xaxis_rs_v = FALSE,      # should a rangslider appear on the x-axis?
    xaxis_rs_t = "date",    # type of rangeslider
    xaxis_rs_c = "white",   # background color of rangeslider
    xaxis_rs_s = 0.03       # thicness of rangeslider
  ),
  yaxis = list(
    en = list(title = "%"),
    el = list(title = "%")
  ),
  use_annotations = TRUE,
  annotations = list( # for y-axis label to appear at the top, where the axis arrow ends
    x = -0.05,
    y = 0.5,
    xref = "paper",
    yref = "paper",
    showarrow = FALSE,
    xanchor = "center",
    yanchor = "top"
  ),
  trace = list(
    list(
      en=list(
        yaxis_h = "% change",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "% change"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "% μεταβολή",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "% μεταβολή"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options
      bar_c = '#AF4035'  # bar color
    )
  ),
  onRender = list(
    ADD_BORDER = list(TRUE, "1px solid black"), # border style
    ADD_INSET = list(TRUE, "10px 100px 10px 100px") # border style
    # ,
    # ADD_MARGIN = list(TRUE, c('10px','100px','10px','100px')) # margins clockside from top - unused, replaced by inset=20px in prependContent function
  )
)



