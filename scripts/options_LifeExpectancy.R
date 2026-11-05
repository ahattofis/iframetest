# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "LifeExpectancy",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Population/Deaths/1830226E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/c6a07dc6-4252-48c1-8e0a-4131be3dcbbc"
  ),
  el=list(
    subtheme = "LifeExpectancy",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Population/Deaths/1830226G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/4d8a2398-f7af-4d54-b796-f4a6e9bd9844"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value   = "Life Expectancy at Birth, Annual",
    col_date    = "YEAR",
    col_trnsp = list("`LIFE EXPECTANCY AT BIRTH`"),    
    col_trnsp_colnames = list(c("Males", "Females")),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = ""
  ),
  el=list(
    col_value   = "Προσδοκώμενη Διάρκεια Ζωής κατά τη Γέννηση, Ετήσια",
    col_date    = "ΕΤΟΣ",
    col_trnsp = list("`ΠΡΟΣΔΟΚΩΜΕΝΗ ΔΙΑΡΚΕΙΑ ΖΩΗΣ ΚΑΤΑ ΤΗ ΓΕΝΝΗΣΗ`"),
    col_trnsp_colnames = list(c("Άντρες", "Γυναίκες")),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = ""
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en = "Life Expectancy at Birth (years)",
    el = "Προσδοκώμενη Διάρκεια Ζωής στη Γέννηση (χρόνια)"
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
    font_s = 12             # font size
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
    en = list(title = ""),
    el = list(title = "")
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
      
      # orientation = 'h',  # horizontal bars
      
      # --- BAR GRAPH options - in case of a bar chart
      bar_c = '#00065F' # bar color
    )
    ,
    list(
      en=list(
        yaxis_h = "Females",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Females"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Γυναίκες",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Γυναίκες"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # orientation = 'h',
      
      # --- BAR GRAPH options
      bar_c = '#E60085' # bar color
    )
  ),
  onRender = list(
    ADD_BORDER = list(TRUE, "1px solid black"), # border style
    ADD_INSET = list(TRUE, "10px 100px 10px 100px") # border style
    # ,
    # ADD_MARGIN = list(TRUE, c('10px','100px','10px','100px')) # margins clockside from top - unused, replaced by inset=20px in prependContent function
  )
)



