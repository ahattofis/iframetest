# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "LabourForce",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Labour Market/Labour Force Survey/0110011E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/c267f02d-2b94-4b63-962c-0b67f73e2564"
  ),
  el=list(
    subtheme = "LabourForce",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Labour Market/Labour Force Survey/0110011G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/8161f115-0b5e-424c-a1a4-c5430eae5e21"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value = "Labour Force Survey - Main Results by Sex, Annual",
    col_date  = "YEAR",      
    col_trnsp = "INDICATOR",   
    col_trnsp_colnames = c(
      "Labour Force - 15+",
      "Employment - 15+",
      "Unemployment - 15+"
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = 
      " dt <- dt[
      SEX == 'Total' &
        (
      (INDICATOR == 'Unemployment - 15+' & MEASURE == 'Percentage') |
      (INDICATOR == 'Labour Force - 15+' & MEASURE == 'Number') |
      (INDICATOR == 'Employment - 15+' & MEASURE == 'Number')
        )
     ]"
  ),
  el=list(
    col_value = "Έρευνα Εργατικού Δυναμικού - Κυριότερα Αποτελέσματα κατά Φύλο, Ετήσια",
    col_date  = "ΕΤΟΣ",    
    col_trnsp = "ΔΕΙΚΤΗΣ",  
    col_trnsp_colnames =
      c(
        "Εργατικό δυναμικό - 15+",
        "Απασχόληση - 15+",
        "Ανεργία - 15+"
      ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = 
      " dt <- dt[
       ΦΥΛΟ == 'Σύνολο' &
        (
        (ΔΕΙΚΤΗΣ == 'Ανεργία - 15+' & ΜΕΤΡΟ == 'Ποσοστό') |
        (ΔΕΙΚΤΗΣ == 'Εργατικό δυναμικό - 15+' & ΜΕΤΡΟ == 'Αριθμός') |
        (ΔΕΙΚΤΗΣ == 'Απασχόληση - 15+' & ΜΕΤΡΟ == 'Αριθμός')
      )
    ]"  
  )
) 

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en="Labour Force, Employment and Rate of Unemployment",
    el="Εργατικό Δυναμικό, Απασχόληση και Ποσοστό Ανεργίας"
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
    en = list(title = "000's persons", tickformat = ",.0f"),
    el = list(title = "000's άτομα", tickformat = ",.0f")      # full numbers with thousands separator
  ),
  # Secondary y-axis
  yaxis2 = list( 
    en = list(title = "%"),
    el = list(title = "%")     
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
        yaxis_h = "000's persons",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "000's persons"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "000's άτομα",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "000's άτομα"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines', # line mode
      yaxis = "y",
      line_t  = 'solid',      # line type
      line_c  = '#1f77b4',  # line color
      line_s  = 2,            # line size
      point_t = 'circle',     # points type
      point_c = '#1f77b4',  # points color
      point_s = 10             # points size
    ),
    list(
      en=list(
        yaxis_h = "",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = ""   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = ""   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines', # line mode
      yaxis = "y",
      line_t  = 'solid',      # line type
      line_c  = '#06402B',  # line color
      line_s  = 2,            # line size
      point_t = 'triangle-up',     # points type
      point_c = '#06402B',  # points color
      point_s = 10             # points size
    ),
    list(
      en=list(
        yaxis_h = "%",
        buttn_h = "",
        hover_h = "%"
      ),
      el=list(
        yaxis_h = "%",
        buttn_h = "",
        hover_h = "%"
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options
      bar_c = "#550000",  # bar color
      yaxis = "y2"
    )
  ),
  onRender = list(
    ADD_BORDER = list(TRUE, "1px solid black"), # border style
    ADD_INSET = list(TRUE, "10px 100px 10px 100px") # border style
    # ,
    # ADD_MARGIN = list(TRUE, c('10px','100px','10px','100px')) # margins clockside from top - unused, replaced by inset=20px in prependContent function
  )
)


