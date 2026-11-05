# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "Construction",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Construction/Building Permits/1440011E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/228b55f4-b620-4a1d-b581-b21cd602c650"
  ),
  el=list(
    subtheme = "Construction",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Construction/Building Permits/1440011G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/57ef0c7a-32ae-4abd-8a2f-791c59663105"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value = "Dwelling units",
    col_date  = "YEAR",     
    col_trnsp = list("DISTRICT"),   
    col_trnsp_colnames = list(       
      c(
        "Lefkosia",
        "Ammochostos",
        "Larnaka",
        "Lemesos",
        "Pafos"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[ `URBAN/RURAL` == 'Total' &`MEASUREMENT` == 'Number'
      ][, c('NUMBER/AREA/VALUE/DWELLING UNITS', 'URBAN/RURAL', 'MEASUREMENT') := NULL]"     
  ),
  el=list(
    col_value = "Αριθμός οικιστικών Μονάδων",
    col_date  = "ΕΤΟΣ",    
    col_trnsp = list("ΕΠΑΡΧΙΑ"),   
    col_trnsp_colnames = list(
      c(
        "Λευκωσία",
        "Αμμόχωστος",
        "Λάρνακα",
        "Λεμεσός",
        "Πάφος"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[`ΑΣΤΙΚΗ/ΑΓΡΟΤΙΚΗ ΠΕΡΙΟΧΗ` == 'Σύνολο' & `ΜΕΤΡΟ` == 'Αριθμός'
      ][, c('ΑΡΙΘΜΟΣ/ΕΜΒΑΔΟΝ/ΑΞΙΑ/ΟΙΚΙΣΤΙΚΕΣ ΜΟΝΑΔΕΣ', 'ΑΣΤΙΚΗ/ΑΓΡΟΤΙΚΗ ΠΕΡΙΟΧΗ', 'ΜΕΤΡΟ') := NULL]"     
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en="Building Permits by District and Area",
    el="Άδειες Οικοδομής κατά Επαρχία"
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
    en = list(title = "", tickformat = ",.0f"),
    el = list(title = "", tickformat = ",.0f")    # full numbers with thousands separator
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
        yaxis_h = "Lefkosia",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Lefkosia"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Λευκωσία",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Λευκωσία"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#800080',  # line color
      line_s  = 2,            # line size
      point_t = 'cross',     # points type
      point_c = '#800080',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Ammochostos",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Ammochostos"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Αμμόχωστος",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Αμμόχωστος"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#B22222',  # line color
      line_s  = 2,            # line size
      point_t = 'triangle-up',     # points type
      point_c = '#B22222',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Larnaka",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Larnaka"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Λάρνακα",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Λάρνακα"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#808000',  # line color
      line_s  = 2,            # line size
      point_t = 'circle',     # points type
      point_c = '#808000',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Lemesos",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Lemesos"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Λεμεσός",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Λεμεσός"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#4169E1',  # line color
      line_s  = 2,            # line size
      point_t = 'square',     # points type
      point_c = '#4169E1',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Pafos",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Pafos"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Πάφος",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Πάφος"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#F08000',  # line color
      line_s  = 2,            # line size
      point_t = 'triangle-down',     # points type
      point_c = '#F08000',  # points color
      point_s = 8             # points size
    )
  ),
  onRender = list(
    ADD_BORDER = list(TRUE, "1px solid black"), # border style
    ADD_INSET = list(TRUE, "10px 100px 10px 100px") # border style
    # , 
    # ADD_MARGIN = list(TRUE, c('10px','100px','10px','100px')) # margins clockside from top - unused, replaced by inset=20px in prepend Content function
  )  
)

