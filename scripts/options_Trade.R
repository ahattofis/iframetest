# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "Trade",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Trade/Turnover Value Index of Retail Trade Except of Motor Vehicles/0810039E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/6a0744d8-e4c8-409a-8baf-49758af00619"
  ),
  el=list(
    subtheme = "Trade",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Trade/Turnover Value Index of Retail Trade Except of Motor Vehicles/0810039G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/a0e0ea0f-b9bf-4dec-9ed1-b079f4b3675c"
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
    en="Turnover Volume Index of Retail Trade Except of Motor Vehicles",
    el="Δείκτης Όγκου Κύκλου Εργασιών Λιανικού Εμπορίου Εκτός Μηχανοκίνητων Οχημάτων"
  ),
  subtitle = list(
    en = "(Base Year 2021=100)",
    el = "(Έτος Βάσης 2021=100)"
  ),
  gen=list(    
    margin_b = list(l = 100, r = 100, b = 50, t = 50), # figure margin from border
    standoff = 10,           # distance axes labels from axes
    chart_type = "line"     # "bar" or "line"
  ),
  fonts = list(
    font_t = "Verdana",     # font type
    font_c = "black",       # font color
    font_s = 13,            # font size for axes/ticks/labels
    title_s = 15            # font size for title
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
    itemwidth = 70
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
    en = list(title = "% annual change"),
    el = list(title = "% ετήσια μεταβολή")   
  ),
  use_annotations = TRUE,
  annotations = list( # for y-axis label to appear at the top, where the axis arrow ends
    x = -0.015,
    y = 1.05,
    xref = "paper",
    yref = "paper",
    showarrow = FALSE,
    xanchor = "center",
    yanchor = "top"
  ),
  subtitle_annotation = list(
    x = 0.5,
    y = 1.02,              
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
        hover_h = "Retail Trade, Except of<br>Motor Vehicles",   # hover header (y-axis)
        name = "Retail Trade, Except of Motor Vehicles"
      ),
      el=list(
        yaxis_h = "Λιανικό Εμπόριο, Εκτός<br>Μηχανοκίνητων Οχημάτων",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Λιανικό Εμπόριο, Εκτός<br>Μηχανοκίνητων Οχημάτων",   # hover header (y-axis)
        name = "Λιανικό Εμπόριο, Εκτός Μηχανοκίνητων Οχημάτων"
      ),
      hover_f = "{y:.1f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#FFAD2D',  # line color
      line_s  = 2,            # line size
      point_t = 'cross',     # points type
      point_c = '#FFAD2D',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Automotive fuel",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Automotive fuel",   # hover header (y-axis)
        name = "Automotive fuel"
      ),
      el=list(
        yaxis_h = "Καύσιμα κίνησης",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Καύσιμα κίνησης",   # hover header (y-axis)
        name = "Καύσιμα κίνησης"
      ),
      hover_f = "{y:.1f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#31576F',  # line color
      line_s  = 2,            # line size
      point_t = 'triangle-up',     # points type
      point_c = '#31576F',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Edible goods",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Edible goods",   # hover header (y-axis)
        name = "Edible goods" 
      ),
      el=list(
        yaxis_h = "Εδώδιμα είδη",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Εδώδιμα είδη",   # hover header (y-axis)
        name = "Εδώδιμα είδη" 
      ),
      hover_f = "{y:.1f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#4FA3C1',  # line color
      line_s  = 2,            # line size
      point_t = 'circle',     # points type
      point_c = '#4FA3C1',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Non edible goods",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Non edible goods",   # hover header (y-axis)
        name = "Non edible goods"
      ),
      el=list(
        yaxis_h = "Μη εδώδιμα είδη",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Μη εδώδιμα είδη",   # hover header (y-axis)
        name = "Μη εδώδιμα είδη"
      ),
      hover_f = "{y:.1f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#7A8B99',  # line color
      line_s  = 2,            # line size
      point_t = 'square',     # points type
      point_c = '#7A8B99',  # points color
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

