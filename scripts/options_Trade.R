# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "Trade",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Trade/Turnover Value Index of Retail Trade Except of Motor Vehicles/0810039E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/84587eee-075f-4eac-9f6c-dfb803e1cd7c"
  ),
  el=list(
    subtheme = "Trade",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Trade/Turnover Value Index of Retail Trade Except of Motor Vehicles/0810039G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/8eed4833-eb4d-476e-af8c-7414218703a3"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value = "Turnover Volume Index of Retail Trade Except of Motor Vehicles (Base Year 2021=100), Annual",
    col_date  = "YEAR",     
    col_trnsp = list("`ECONOMIC ACTIVITY (NACE Rev. 2)`"),   
    col_trnsp_colnames = list(       
      c(
        "RETAIL TRADE, EXCEPT OF MOTOR VEHICLES",
        "Automotive fuel",
        "Edible goods",
        "Non edible goods"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[INDEX == '% change - previous year'][, INDEX := NULL]"       
  ),
  el=list(
    col_value = "Δείκτης Όγκου Κύκλου Εργασιών Λιανικού Εμπορίου Εκτός Μηχανοκίνητων Οχημάτων (Έτος Βάσης 2021=100), Ετήσια",
    col_date  = "ΕΤΟΣ",    
    col_trnsp = list("`ΟΙΚΟΝΟΜΙΚΗ ΔΡΑΣΤΗΡΙΟΤΗΤΑ (NACE Αναθ. 2)`"),   
    col_trnsp_colnames = list(
      c(
        "ΛΙΑΝΙΚΟ ΕΜΠΟΡΙΟ, ΕΚΤΟΣ ΜΗΧΑΝΟΚΙΝΗΤΩΝ ΟΧΗΜΑΤΩΝ",
        "Καύσιμα κίνησης",
        "Εδώδιμα είδη",
        "Μη εδώδιμα είδη"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[ΔΕΙΚΤΗΣ == '% μεταβολη - προοηγούμενο έτος'][, ΔΕΙΚΤΗΣ := NULL]"     
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en="Turnover Volume Index of Retail Trade Except of Motor Vehicles<br>(Base Year 2021=100)",
    el="Δείκτης Όγκου Κύκλου Εργασιών Λιανικού Εμπορίου Εκτός Μηχανοκίνητων Οχημάτων<br>(Έτος Βάσης 2021=100)"
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
    en = list(title = "%"),
    el = list(title = "%")   
  ),
  use_annotations = TRUE,
  annotations = list( # for y-axis label to appear at the top, where the axis arrow ends
    x = 0,
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
        yaxis_h = "Retail Trade, Except of<br>Motor Vehicles",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Retail Trade, Except of<br>Motor Vehicles"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Λιανικό Εμπόριο, Εκτός<br>Μηχανοκίνητων Οχημάτων",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Λιανικό Εμπόριο, Εκτός<br>Μηχανοκίνητων Οχημάτων"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#ff7f0e',  # line color
      line_s  = 2,            # line size
      point_t = 'cross',     # points type
      point_c = '#ff7f0e',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Automotive fuel",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Automotive fuel"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Καύσιμα κίνησης",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Καύσιμα κίνησης"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#008000',  # line color
      line_s  = 2,            # line size
      point_t = 'triangle-up',     # points type
      point_c = '#008000',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Edible goods",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Edible goods"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Εδώδιμα είδη",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Εδώδιμα είδη"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#0077B6',  # line color
      line_s  = 2,            # line size
      point_t = 'circle',     # points type
      point_c = '#0077B6',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Non edible goods",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Non edible goods"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Μη εδώδιμα είδη",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Μη εδώδιμα είδη"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#800000',  # line color
      line_s  = 2,            # line size
      point_t = 'square',     # points type
      point_c = '#800000',  # points color
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

