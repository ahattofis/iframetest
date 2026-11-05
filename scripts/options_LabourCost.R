# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "LabourCost",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Labour Cost and Earnings/Earnings/1110020E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/a841799d-9788-4130-bb0c-0dd2cc8e0e94"
  ),
  el=list(
    subtheme = "LabourCost",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Labour Cost and Earnings/Earnings/1110020G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/4a15a51b-8329-4fb4-8cae-87bcfbed98bb"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value   = "Average Monthly Earnings, Annual",
    col_date    = "YEAR",
    col_trnsp = list("SEX"),
    col_trnsp_colnames = list(c("Total", "Males", "Females")),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = " dt <- dt[`MEASURE` == 'Median'][, `MEASURE` := NULL ] "
  ),
  el=list(
    col_value   = "Μέσοι Όροι Μηνιαίων Απολαβών, Ετήσια",
    col_date    = "ΕΤΟΣ",
    col_trnsp = list("ΦΥΛΟ"),
    col_trnsp_colnames = list(c("Σύνολο", "Άντρες", "Γυναίκες")),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = " dt <- dt[`ΜΕΤΡΟ` == 'Διάμεσος'][, `ΜΕΤΡΟ` := NULL] "
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en = "Median Monthly Earnings",
    el = "Διάμεσος Μηνιαίων Απολαβών"
  ),
  gen=list(    
    margin_b = list(l = 100, r = 100, b = 50, t = 50), # figure margin from border
    standoff = 10,           # distance axes labels from axes
    chart_type = "bar",     # "bar" or "line"
    bar_mode = "group"      #  in case chart_type = "bar": stack or group
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
    en = list(title = "€"),
    el = list(title = "€")
  ),
  use_annotations = TRUE,
  annotations = list( # for y-axis label to appear at the top, where the axis arrow ends
    x = -0.08,
    y = 0.5,
    xref = "paper",
    yref = "paper",
    showarrow = FALSE,
    xanchor = "right",
    yanchor = "middle"
  ),
  trace = list(
    list(
      en=list(
        yaxis_h = "Total",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Total"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Σύνολο",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Σύνολο"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...

      # --- BAR GRAPH options - in case of a bar chart
      bar_c = '#ff7f0e', # bar color
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#00065F',  # line color
      line_s  = 2,            # line size
      point_t = 'circle',     # points type
      point_c = '#00065F',  # points color
      point_s = 5             # points size
    )
    ,
    list(
      en=list(
        yaxis_h = "Males",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Males"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Άντρες",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Άντρες"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...

      # --- BAR GRAPH options
      bar_c = '#0a32e6', # bar color
      
      # --- LINE GRAPH options
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#ff7f0e',  # line color
      line_s  = 2,            # line size
      point_t = 'circle',     # points type
      point_c = '#ff7f0e',  # points color
      point_s = 5             # points size
    )
    ,
    list(
      en=list(
        yaxis_h = "Females",  # y-axis header
        buttn_h = "",    # button header
        hover_h = "Females"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Γυναίκες",  # y-axis header
        buttn_h = "",   # button header
        hover_h = "Γυναίκες"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...

      # --- BAR GRAPH options
      bar_c = '#ff66cc', # bar color
      
      # --- LINE GRAPH options
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#d62728',  # line color
      line_s  = 2,            # line size
      point_t = 'circle',     # points type
      point_c = '#d62728',  # points color
      point_s = 5             # points size
    )    
  ),
  onRender = list(
    ADD_BORDER = list(TRUE, "1px solid black"), # border style
    ADD_INSET = list(TRUE, "10px 100px 10px 100px") # border style
    # , 
    # ADD_MARGIN = list(TRUE, c('10px','100px','10px','100px')) # margins clockside from top - unused, replaced by inset=20px in prependContent function
  )  
)
