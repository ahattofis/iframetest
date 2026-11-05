# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "Services",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Services/Services and Transport Indices/2210022E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/777b5bf4-5426-43fe-bc0c-40b432874646"
  ),
  el=list(
    subtheme = "Services",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Services/Services and Transport Indices/2210022G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/c80b4b81-e3aa-4f10-83ac-f90b5d0a8000"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value = "Turnover Value Index of Services and Transport (Base Year 2021=100), Annual",
    col_date  = "YEAR",     
    col_trnsp = list("`ECONOMIC ACTIVITY (NACE Rev. 2)`"),   
    col_trnsp_colnames = list(       
      c(
        "H Transport and Storage",
        "I Accommodation and Food Service Activities (Hotels & Restaurants)",
        "J Information and Communication",
        "L Real Estate Activities",
        "M Professional, Scientific and Technical Activities",
        "N Administrative and Support Service Activities"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[`INDEX` == '% change - previous year'][, `INDEX` := NULL]"      
  ),
  el=list(
    col_value = "Δείκτης Κύκλου Εργασιών στις Υπηρεσίες και Μεταφορές (Έτος Βάσης 2021=100), Ετήσια",
    col_date  = "ΕΤΟΣ",    
    col_trnsp = list("`ΟΙΚΟΝΟΜΙΚΗ ΔΡΑΣΤΗΡΙΟΤΗΤΑ (NACE Αναθ. 2)`"),   
    col_trnsp_colnames = list(
      c(
        "H Μεταφορές και Αποθήκευση",
        "I Δραστηριότητες Υπηρεσιών Παροχής Καταλύματος και Υπηρεσιών Εστίασης (Ξενοδοχεία και Εστιατόρια)",
        "J Ενημέρωση και Επικοινωνία",
        "L Διαχείριση  Ακίνητης  Περιουσίας",
        "M Επαγγελματικές, Επιστημονικές και Τεχνικές Δραστηριότητες",
        "N Διοικητικές και Υποστηρικτικές Δραστηριότητες"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[`ΔΕΙΚΤΗΣ` == '% μεταβολή - προηγούμενο έτος'][, `ΔΕΙΚΤΗΣ` := NULL]"
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en="Value Added in Services and Transport",
    el="Προστιθέμενη Αξία στις Υπηρεσίες και Μεταφορές"
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
    x = 1.02,
    y = 0.5,
    xanchor = "left",
    yanchor = "middle",
    itemwidth = 100,
    tracegroupgap = 30
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
    en = list(title = "€mn", tickformat = ",.0f"),
    el = list(title = "€εκ.", tickformat = ",.0f")    # full numbers with thousands separator
  ),
  use_annotations = TRUE,
  annotations = list( # for y-axis label to appear at the top, where the axis arrow ends
    x = -0.03,
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
        yaxis_h = "H Transport and Storage",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "H Transport and Storage"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "H Μεταφορές και Αποθήκευση",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "H Μεταφορές και Αποθήκευση"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#4470AD',  # line color
      line_s  = 2,            # line size
      point_t = 'diamond',     # points type
      point_c = '#4470AD',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "I Accommodation and Food<br>Service Activities<br>(Hotels & Restaurants)",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "I Accommodation and Food<br>Service Activities<br>(Hotels & Restaurants)"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "I Δραστηριότητες Υπηρεσιών<br>Παροχής Καταλύματος και<br>Υπηρεσιών Εστίασης (Ξενοδοχεία<br>και Εστιατόρια)",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "I Δραστηριότητες Υπηρεσιών<br>Παροχής Καταλύματος και<br>Υπηρεσιών Εστίασης (Ξενοδοχεία<br>και Εστιατόρια)"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#8B0000',  # line color
      line_s  = 2,            # line size
      point_t = 'square',     # points type
      point_c = '#8B0000',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "J Information and<br>Communication",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "J Information and<br>Communication"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "J Ενημέρωση και Επικοινωνία",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "J Ενημέρωση και Επικοινωνία"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#8C9E5C',  # line color
      line_s  = 2,            # line size
      point_t = 'triangle-up',     # points type
      point_c = '#8C9E5C',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "L Real Estate Activities",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "L Real Estate Activities"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "L Διαχείριση Ακίνητης Περιουσίας",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "L Διαχείριση Ακίνητης Περιουσίας"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#9070c4',  # line color
      line_s  = 2,            # line size
      point_t = 'cross',     # points type
      point_c = '#9070c4',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "M Professional, Scientific<br>and Technical Activities",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "M Professional, Scientific<br>and Technical Activities"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "M Επαγγελματικές, Επιστημονικές<br>και Τεχνικές Δραστηριότητες",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "M Επαγγελματικές, Επιστημονικές<br>και Τεχνικές Δραστηριότητες"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#44A7C4',  # line color
      line_s  = 2,            # line size
      point_t = 'asterisk-open',     # points type
      point_c = '#44A7C4',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "N Administrative and<br>Support Service Activities",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "N Administrative and<br>Support Service Activities"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "N Διοικητικές και Υποστηρικτικές<br>Δραστηριότητες",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "N Διοικητικές και Υποστηρικτικές<br>Δραστηριότητες"   # hover header (y-axis)
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#E28A3A',  # line color
      line_s  = 2,            # line size
      point_t = 'circle',     # points type
      point_c = '#E28A3A',  # points color
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

