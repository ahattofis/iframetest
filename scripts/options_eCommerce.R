# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "eCommerce",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Information Society/ICT Usage and E-commerce in Enterprises/e-Commerce/1532010E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/4c4a7481-e867-4b0b-944b-09db5a91749a"
  ),
  el=list(
    subtheme = "eCommerce",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Information Society/ICT Usage and E-commerce in Enterprises/e-Commerce/1532010G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/75e915f1-0431-459f-a3e6-ea8231f634c2"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value = "E-Commerce, Web Sales, Annual",
    col_date  = "YEAR",    # in format 2021
    col_trnsp = list("INDICATOR"),  # if NULL, no transposition
    col_trnsp_colnames = list(c("Enterprises having web sales (excluding manually typed e-mails)")),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[`MEASURE` == '% on total number of enterprises'][, `MEASURE` := NULL]" 
  ),
  el=list(
    col_value = "Πωλήσεις Μέσω Ιστότοπου ή Εφαρμογών, Ετήσια",
    col_date  = "ΕΤΟΣ",    # in format 2021    
    col_trnsp = list("ΔΕΙΚΤΗΣ"),  # if NULL, no transposition
    col_trnsp_colnames = list(c("Επιχειρήσεις με πωλήσεις μέσω ιστότοπου ή εφαρμογών, (εξαιρούνται τα δακτυλογραφημένα e-mails)")),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[`ΜΕΤΡΟ` == '% του συνόλου των επιχειρήσεων'][, `ΜΕΤΡΟ` := NULL]" 
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en="E-Commerce, Web Sales, Annual",
    el="Πωλήσεις Μέσω Ιστότοπου ή Εφαρμογών, Ετήσια"
  ),
  gen=list(    
    margin_b = list(l = 100, r = 100, b = 50, t = 50), # figure margin from border
    standoff = 10,           # distance axes labels from axes
    chart_type = "line",    # "bar" or "line"
    bar_mode = ""           #  in case chart_type = "bar": stack or group
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
    spike_t = 'dash',      # spikeline type
    spike_c = "black",  # spikeline color
    spike_s = 2             # spikeline size
  ),
  showlegend = FALSE,
  legend = list(
    x = 0.5,
    y = -0.1,
    xanchor = "center",
    yanchor = "top",
    orientation = "h",
    itemwidth = 80
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
    x = 0,
    y = 1,
    xref = "paper",
    yref = "paper",
    showarrow = FALSE,
    xanchor = "right",
    yanchor = "middle"
  ),
  trace = list(
    list(
      en=list(
        yaxis_h = "%",  # y-axis header
        buttn_h = "",    # button header
        hover_h = "%"  # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "%",  # y-axis header
        buttn_h = "",    # button header
        hover_h = "%"  # hover header (y-axis)
      ),
      hover_f = "{y:.1f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#F28500',  # line color
      line_s  = 2            # line size
    )
    
  ),
  onRender = list(
    ADD_BORDER = list(TRUE, "1px solid black"), # border style
    ADD_INSET = list(TRUE, "10px 100px 10px 100px") # border style
    # , 
    # ADD_MARGIN = list(TRUE, c('10px','100px','10px','100px')) # margins clockside from top - unused, replaced by inset=20px in prependContent function
  )  
)
