# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "Tourism_Annual_Numbers",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Tourism/Revenue from Tourism/Annual/2032011E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/4f28a4b0-2bf3-4cce-bd32-31f795cf7dd0"
  ),
  el=list(
    subtheme = "Tourism_Annual_Numbers",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Tourism/Revenue from Tourism/Annual/2032011G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/8d403256-57eb-4a7f-af1e-1714ffe1009f"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value = "Revenue Estimates and Arrivals of Tourists, Annual",  
    col_date  = "YEAR",    # in format 2021M09
    col_trnsp = list("`ARRIVALS AND REVENUE`"),  # if empty, no transposition
    col_trnsp_colnames = c("Arrivals of tourists", "Revenue (€ mn)"),
    col_trnsp_renamefrom = c("Arrivals of tourists", "Revenue (€ mn)"),
    col_trnsp_renameto = c("Tourist Arrivals (000's)", "Revenue from Tourism (€ mn)"),
    col_filter_str = "dt[`ARRIVALS AND REVENUE` == 'Arrivals of tourists', Value := Value / 1000]"
  ),
  el=list(
    col_value = "Eκτίμηση Εσόδων και Αφίξεις Τουριστών, Ετήσια",
    col_date  = "ΕΤΟΣ",    # in format 2021M09
    col_trnsp = list("`ΑΦΙΞΕΙΣ ΚΑΙ ΕΣΟΔΑ`"),    # if empty, no transposition
    col_trnsp_colnames = c("Αφίξεις τουριστών", "Έσοδα (€ εκ.)"),
    col_trnsp_renamefrom = c("Αφίξεις τουριστών", "Έσοδα (€ εκ.)"),
    col_trnsp_renameto = c("Αφίξεις Περιηγητών (000'ς)", "Έσοδα απο τον Τουρισμό (€ εκ.)"),
    col_filter_str = "dt[`ΑΦΙΞΕΙΣ ΚΑΙ ΕΣΟΔΑ` == 'Αφίξεις τουριστών', Value := Value / 1000]"
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en="Arrivals of Tourists and Revenue",
    el="Αφίξεις Τουριστών και Έσοδα"
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
    en = list(title = " ", tickformat = ",.0f"),
    el = list(title = " ", tickformat = ",.0f")    # full numbers with thousands separator
  ),
  use_annotations = TRUE,
  annotations = list( # for y-axis label to appear at the top, where the axis arrow ends
    x = -0.03,
    y = 1.01,
    xref = "paper",
    yref = "paper",
    showarrow = FALSE,
    xanchor = "center",
    yanchor = "top"
  ),
  trace = list(
    list(
      en=list(
        yaxis_h = "Arrivals of tourists",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Tourist Arrivals (000's)",   # hover header (y-axis)
        name = "Tourist Arrivals (000's)"
      ),
      el=list(
        yaxis_h = "Αφίξεις τουριστών",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Αφίξεις Περιηγητών (000'ς)",   # hover header (y-axis)
        name = "Αφίξεις Περιηγητών (000'ς)"
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#31576F',  # line color
      line_s  = 2,            # line size
      point_t = 'diamond',     # points type
      point_c = '#31576F',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Revenue (€ mn)",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Revenue from Tourism (€ mn)",   # hover header (y-axis)
        name = "Revenue from Tourism (€ mn)"
      ),
      el=list(
        yaxis_h = "Έσοδα (€ εκ.)",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Έσοδα απο τον Τουρισμό (€ εκ.)",   # hover header (y-axis)
        name = "Έσοδα απο τον Τουρισμό (€ εκ.)"
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#FFAD2D',  # line color
      line_s  = 2,            # line size
      point_t = 'square',     # points type
      point_c = '#FFAD2D',  # points color
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

