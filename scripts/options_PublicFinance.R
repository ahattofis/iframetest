# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "PublicFinance",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Public Finance/Non-Financial Accounts/0520020E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/6e94a98c-6bff-4c55-952d-0b84d2c7ca86"
  ),
  el=list(
    subtheme = "PublicFinance",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Public Finance/Non-Financial Accounts/0520020G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/cb1100a6-6f26-4133-a250-d305f5f978eb"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value   = "Main Aggregates for General Government, Annual",
    col_date    = "YEAR",
    col_trnsp = list("`TRANSACTION/ BALANCING ITEM`"),    
    col_trnsp_colnames = list(c("OTR Total revenue", "OTE Total expenditure", "B9 Net lending (+)/net borrowing (-) (% of GDP)")),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = ""
  ),
  el=list(
    col_value   = "Κύρια Μεγέθη της Γενικής Κυβέρνησης, Ετήσια (EN)",
    col_date    = "YEAR",
    col_trnsp = list("`TRANSACTION/ BALANCING ITEM`"),  
    col_trnsp_colnames = list(c("OTR Total revenue", "OTE Total expenditure", "B9 Net lending (+)/net borrowing (-) (% of GDP)")),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = ""
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en = "General Government Finance",
    el = "Δημοσιονομικοί Λογαριασμοί της Γενικής Κυβέρνησης"
  ),
  gen=list(
    margin_b = list(l = 100, r = 100, b = 50, t = 50), # figure margin from border
    standoff = 10,           # distance axes labels from axes
    chart_type = "scatter"     # "bar" or "line"
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
    # Secondary y-axis
  yaxis2 = list( 
    en = list(title = "€ mn", tickformat = ",.0f"),
    el = list(title = "€ εκ.", tickformat = ",.0f")      # full numbers with thousands separator
  ),
  use_annotations = TRUE,
  annotations = list(         # primary y-axis
    x = -0.05,
    y = 1,
    xref = "paper",
    yref = "paper",
    showarrow = FALSE,
    xanchor = "center",
    yanchor = "top"
  ),
  annotations2 = list(        # secondary y-axis
    x = 1.05, 
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
        yaxis_h = "Total Revenue",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Total Revenue"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Σύνολο Εισόδων",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Σύνολο Εισόδων"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines', # line mode
      yaxis = "y2",
      line_t  = 'solid',      # line type
      line_c  = '#0077B6',  # line color
      line_s  = 2            # line size
      # point_t = 'circle',     # points type
      # point_c = '#00065F',  # points color
      # point_s = 5             # points size
    )
    ,
    list(
      en=list(
        yaxis_h = "Total Expenditure",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Total Expenditure"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Σύνολο Ειξόδων",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Σύνολο Ειξόδων"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
    
      
      # --- LINE GRAPH options
      mode = 'lines', # line mode
      yaxis = "y2",
      line_t  = 'solid',      # line type
      line_c  = '#800000',  # line color
      line_s  = 2            # line size
      # point_t = 'circle',     # points type
      # point_c = '#800000',  # points color
      # point_s = 5             # points size
    )
    ,
    list(
      en=list(
        yaxis_h = "General Government balance % of GDP",  # y-axis header
        buttn_h = "",    # button header
        hover_h = "General Government balance % of GDP"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Δημοσιονομικό Έλλειμμα/Πλεόνασμα % του ΑΕΠ",  # y-axis header
        buttn_h = "",   # button header
        hover_h = "Δημοσιονομικό Έλλειμμα/Πλεόνασμα % του ΑΕΠ"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options
      bar_c = '#008000'  # bar color
      
    )
  ),
  onRender = list(
    ADD_BORDER = list(TRUE, "1px solid black"), # border style
    ADD_INSET = list(TRUE, "10px 100px 10px 100px") # border style
    # ,
    # ADD_MARGIN = list(TRUE, c('10px','100px','10px','100px')) # margins clockside from top - unused, replaced by inset=20px in prependContent function
  )
)



