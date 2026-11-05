# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "Population",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Population/Population/1820010E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/8554dd60-46db-4083-9980-2231f8a960cc"
  ),
  el=list(
    subtheme = "Population",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Population/Population/1820010G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/6f7d4537-3e64-473f-acbc-5a527b1417f7"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value = "De Jure Population by Sex, Annual",
    col_date  = "YEAR",    # in format 2021
    col_trnsp = list("`POPULATION/PERCENTAGE CHANGE`"),  # if NULL, no transposition
    col_trnsp_colnames = list(
      c(
        "Total (000's)"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[PERIOD  == 'End of the year']"
  ),
  el=list(
    col_value = "Πληθυσμός De Jure κατά Φύλο, Ετήσια",
    col_date  = "ΕΤΟΣ",    # in format 2021    
    col_trnsp = list("`ΠΛΗΘΥΣΜΟΣ/ΠΟΣΟΣΤΙΑΙΑ ΜΕΤΑΒΟΛΗ`"),  # if NULL, no transposition
    col_trnsp_colnames = list(
      c(
        "Σύνολο (000'ς)"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[ΠΕΡΙΟΔΟΣ == 'Τέλος του έτους']"
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en="Population in the Government Controlled Area (thousand)",
    el="Πληθυσμός στις Περιοχές που Ελέγχει το Κράτος (χιλιάδες)"
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
    itemwidth = 120
  ),
  show_updmenu = FALSE,
  updmenus = list(
    updm_t = "buttons",     #"buttons" --> radio buttons, "dropdown" --> dropdown list
    updm_x = 0.05          # position of menus along x-axis
  ),
  xaxis = list(
    xaxis_h = "",      # x-axis header
    xaxis_la = -45,         # x-axis angle of labels
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
        yaxis_h = "",  # y-axis header
        buttn_h = "",    # button header
        hover_h = "Population (thousand)"  # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "",  # y-axis header
        buttn_h = "",    # button header
        hover_h = "Πληθυσμός (χιλιάδες)"  # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
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
