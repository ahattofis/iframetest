# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "Energy",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Energy/0900011E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/5fd5590a-d1cd-4a67-9a12-9ec76dcf9574"
  ),
  el=list(
    subtheme = "Energy",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Energy/0900011G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/a97f1acd-7517-43dc-8c84-28c5e138b528"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value   = "Sales and Stocks of Petroleum Products, Annual",
    col_date    = "YEAR",
    col_trnsp = list("`SALES/STOCKS`"),
    col_trnsp_colnames = list(c(
      "Sales from filling stations", 
      "Total sales"
      )),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[`FUEL TYPE` == 'Total fuels'][, `FUEL TYPE` := NULL]" 
  ),
  el=list(
    col_value   = "Πωλήσεις και Αποθέματα Πετρελαιοειδών, Ετήσια",
    col_date    = "ΕΤΟΣ",
    col_trnsp = list("`ΠΩΛΗΣΕΙΣ/ΑΠΟΘΕΜΑΤΑ`"),            
    col_trnsp_colnames = list(c(
      "Πωλήσεις από πρατήρια πετρελαιοειδών", 
      "Ολικές Πωλήσεις"
      )),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[`ΕΙΔΟΣ ΚΑΥΣΙΜΟΥ` == 'Σύνολο καυσίμων'][, `ΕΙΔΟΣ ΚΑΥΣΙΜΟΥ` := NULL]" 
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en = "Sales and Stocks of Petroleum Products, Annual",
    el = "Πωλήσεις και Αποθέματα Πετρελαιοειδών, Ετήσια"
  ),
  gen=list(
    margin_b = list(l = 100, r = 100, b = 50, t = 60), # figure margin from border
    standoff = 10,           # distance axes labels from axes
    chart_type = "bar",     # "bar" or "line"
    bar_mode = "group"      #  in case chart_type = "bar": stack or group
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
    y = -0.05,
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
    en = list(title = "Sales", tickformat = ",.0f"),
    el = list(title = "Πωλήσεις", tickformat = ",.0f")    # full numbers with thousands separator
  ),
  use_annotations = TRUE,
  annotations = list( # for y-axis label to appear at the top, where the axis arrow ends
    x = 0,
    y = 1.05,
    xref = "paper",
    yref = "paper",
    showarrow = FALSE,
    xanchor = "right",
    yanchor = "middle"
  ),
  trace = list(
    list(
      en=list(
        yaxis_h = "Sales from filling stations",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Sales from filling stations"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Πωλήσεις από πρατήρια πετρελαιοειδών",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Πωλήσεις από πρατήρια πετρελαιοειδών"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options - in case of a bar chart
      bar_c = '#FFAD2D' # bar color
    ) ,
    list(
      en=list(
        yaxis_h = "Total sales",  # y-axis header
        buttn_h = "",    # button header
        hover_h = "Total sales"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Ολικές Πωλήσεις",  # y-axis header
        buttn_h = "",   # button header
        hover_h = "Ολικές Πωλήσεις"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options
      bar_c = '#31576F' # bar color
    )
  ),
  onRender = list(
    ADD_BORDER = list(TRUE, "1px solid black"), # border style
    ADD_INSET = list(TRUE, "10px 100px 10px 100px") # border style
    # ,
    # ADD_MARGIN = list(TRUE, c('10px','100px','10px','100px')) # margins clockside from top - unused, replaced by inset=20px in prependContent function
  )
)



