# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "ExternalTrade",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "External Trade/1000011E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/ab99daf1-aab6-461e-9b77-013e0001e31e"
  ),
  el=list(
    subtheme = "ExternalTrade",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "External Trade/1000011G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/73c5ec6d-3a0d-4d0d-8506-2c697091806f"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value = "Foreign Trade Summary Data, Annual",
    col_date  = "YEAR",     
    col_trnsp = list("`TYPE OF TRADE`"),   
    col_trnsp_colnames = list(       
      c(
        "Imports (c.i.f.)",
        "Exports (f.o.b.)"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[MEASURE == 'Thousand Euro' & `TYPE OF GOODS` == 'Total goods' & `PARTNER COUNTRY` == 'Total trade'][, c('MEASURE', 'TYPE OF GOODS', 'PARTNER COUNTRY') := NULL]"      
  ),
  el=list(
    col_value = "Συνοπτικά Στοιχεία Εξωτερικού Εμπορίου, Ετήσια",
    col_date  = "ΕΤΟΣ",    
    col_trnsp = list("`ΕΙΔΟΣ ΕΜΠΟΡΙΟΥ`"),   
    col_trnsp_colnames = list(
      c(
        "Εισαγωγές (c.i.f.)",
        "Εξαγωγές (f.o.b.)"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[ΜΕΤΡΟ == 'Χιλιάδες Ευρώ' & `ΤΥΠΟΣ ΑΓΑΘΩΝ` == 'Σύνολο αγαθών' & `ΕΜΠΟΡΙΚΟΣ ΕΤΑΙΡΟΣ` == 'Συνολικό εμπόριο'][, c('ΜΕΤΡΟ', 'ΤΥΠΟΣ ΑΓΑΘΩΝ', 'ΕΜΠΟΡΙΚΟΣ ΕΤΑΙΡΟΣ') := NULL]"
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en="Foreign Trade Summary Data, Annual",
    el="Συνοπτικά Στοιχεία Εξωτερικού Εμπορίου, Ετήσια"
  ),
  gen=list(    
    margin_b = list(l = 100, r = 100, b = 50, t = 50), # figure margin from border
    standoff = 10,           # distance axes labels from axes
    chart_type = "line"     # "bar" or "line"
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
    x = 1.02,
    y = 0.5,
    xanchor = "left",
    yanchor = "middle",
    itemwidth = 100,
    tracegroupgap = 30
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
    tickformat = "%Y",
    xaxis_rs_t = "date",    # type of rangeslider
    xaxis_rs_c = "white",   # background color of rangeslider
    xaxis_rs_s = 0.03       # thicness of rangeslider
  ), 
  yaxis = list(
    en = list(title = "", tickformat = ",.0f"),
    el = list(title = "", tickformat = ",.0f")    # full numbers with thousands separator
  ),
  use_annotations = TRUE,
  annotations = list( # for y-axis label to appear at the top, where the axis arrow ends
    x = -0.03,
    y = 1,
    xref = "paper",
    yref = "paper",
    showarrow = FALSE,
    xanchor = "center",
    yanchor = "top"
  ),
  trace = list(
    list(
      en=list(
        yaxis_h = "Imports",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Imports"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Εισαγωγές",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Εισαγωγές"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#4470AD',  # line color
      line_s  = 2,            # line size
      point_t = 'diamond',     # points type
      point_c = '#1269C7',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Exports",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Exports"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Εξαγωγές",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Εξαγωγές"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#8B0000',  # line color
      line_s  = 2,            # line size
      point_t = 'square',     # points type
      point_c = '#8B0000',  # points color
      point_s = 8             # points size
    )
  ),
  onRender = list(
    ADD_BORDER = list(TRUE, "1px solid black"), # border style
    ADD_INSET = list(TRUE, "10px 100px 10px 100px") # border style
    # , 
    # ADD_MARGIN = list(TRUE, c('10px','100px','10px','100px')) # margins clockside from top - unused, replaced by inset=20px in prependContent function
  )  
)

