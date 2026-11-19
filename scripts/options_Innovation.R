# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "Innovation",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Innovation/1300010E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/6aa41304-fcd5-4455-8fcf-79f02f6e9afd"
  ),
  el=list(
    subtheme = "Innovation",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Innovation/1300010G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/8673178a-c2ec-421f-9bd1-c9259835449c"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value   = "Enterprises with Innovation Activities by Sector, Annual",
    col_date    = "PERIOD",
    col_trnsp = list("`ENTERPRISE SECTOR`"),    
    col_trnsp_colnames = list(c("All enterprises", "Industry enterprises", "Services enterprises")),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[`INNOVATION ACTIVITY TYPE (% of enterprises)` == 'Innovation activities'][, `INNOVATION ACTIVITY TYPE (% of enterprises)` := NULL ]"
  ),
  el=list(
    col_value   = "Επιχειρήσεις με Καινοτομικές Δραστηριότητες κατά Τομέα, Ετήσια",
    col_date    = "ΠΕΡΙΟΔΟΣ",
    col_trnsp = list("`ΤΟΜΕΑΣ ΔΡΑΣΤΗΡΙΟΤΗΤΑΣ`"),
    col_trnsp_colnames = list(c("Σύνολο επιχειρήσεων", "Βιομηχανία", "Υπηρεσίες")),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[`ΕΙΔΟΣ ΚΑΙΝΟΤΟΜΙΑΣ (% επιχειρήσεων)` == 'Καινοτομικές δραστηριότητες'][, `ΕΙΔΟΣ ΚΑΙΝΟΤΟΜΙΑΣ (% επιχειρήσεων)` := NULL ]"
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en = "Enterprises with Innovation Activities by Sector",
    el = "Επιχειρήσεις με Καινοτομικές Δραστηριότητες κατά Τομέα"
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
    x = -0.004,
    y = 1.015,
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
        hover_h = "Total",   # hover header (y-axis)
        name = "Total"
      ),
      el=list(
        yaxis_h = "Σύνολο",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Σύνολο",   # hover header (y-axis)
        name = "Σύνολο"
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options - in case of a bar chart
      bar_c = '#FFAD2D' # bar color
    )
    ,
    list(
      en=list(
        yaxis_h = "Industry",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Industry",   # hover header (y-axis)
        name = "Industry"
      ),
      el=list(
        yaxis_h = "Βιομηχανία",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Βιομηχανία",   # hover header (y-axis)
        name = "Βιομηχανία"
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options
      bar_c = '#31576F' # bar color
    )
    ,
    list(
      en=list(
        yaxis_h = "Services",  # y-axis header
        buttn_h = "",    # button header
        hover_h = "Services",   # hover header (y-axis)
        name = "Services"
      ),
      el=list(
        yaxis_h = "Υπηρεσίες",  # y-axis header
        buttn_h = "",   # button header
        hover_h = "Υπηρεσίες",   # hover header (y-axis)
        name = "Υπηρεσίες"
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options
      bar_c = '#4FA3C1'
    )
  ),
  onRender = list(
    ADD_BORDER = list(TRUE, "1px solid black"), # border style
    ADD_INSET = list(TRUE, "10px 100px 10px 100px") # border style
    # ,
    # ADD_MARGIN = list(TRUE, c('10px','100px','10px','100px')) # margins clockside from top - unused, replaced by inset=20px in prependContent function
  )
)



