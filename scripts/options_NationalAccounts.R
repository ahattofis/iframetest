# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "NationalAccounts",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "National Accounts/Annual National Accounts/0610010E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/ebb59a2d-e046-494d-98a6-d418d0e2ec5c"
  ),
  el=list(
    subtheme = "NationalAccounts",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "National Accounts/Annual National Accounts/0610010G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/ba3c8170-5afa-4bc9-8fb1-ba548e03396c"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value   = "Gross Domestic Product and Gross National Income, Annual",
    col_date    = "YEAR",
    col_trnsp = list("`NA AGGREGATE`"),    
    col_trnsp_colnames = list(c(
            "B1GQ Gross Domestic Product at current prices (Million Euro)",
             "B1GQ Gross Domestic Product In Real terms (% annual change)"
            )
          ),    
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = ""
  ),
  el=list(
    col_value   = "Ακαθάριστο Εγχώριο Προϊόν και Ακαθάριστο Εθνικό Εισόδημα, Ετήσια",
    col_date    = "ΕΤΟΣ",
    col_trnsp = list("`ΜΑΚΡΟΟΙΚΟΝΟΜΙΚΑ ΜΕΓΕΘΗ`"),    
    col_trnsp_colnames = list(c(
            "B1GQ Ακαθάριστο Εγχώριο Προϊόν σε τρέχουσες τιμές (Εκατομμύρια Ευρώ)",
             "B1GQ Ακαθάριστο Εγχώριο Προϊόν σε πραγματικούς όρους (% ετήσια μεταβολή)"
            )
          ),        
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = ""
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en = "Gross Domestic Product at Current Prices and Annual Change in Real Terms",
    el = "Ακαθάριστο Εγχώριο Προϊόν σε Τρέχουσες Τιμές και Ετήσια Μεταβολή σε Πραγματικούς Όρους"
  ),
  subtitle = list(
    en="2025 provisional data",
    el="2025 προκαταρκτικά στοιχεία"
  ),
  gen=list(
    margin_b = list(l = 100, r = 100, b = 50, t = 50), # figure margin from border
    standoff = 10,           # distance axes labels from axes
    chart_type = "scatter"     # "bar" or "line"
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
    itemwidth = 60
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
  # secondary y-axis
  yaxis2 = list( 
    en = list(title = "€ mn", tickformat = ",.0f"),
    el = list(title = "€ εκ.", tickformat = ",.0f")      # full numbers with thousands separator
  ),
  use_annotations = TRUE,
  annotations = list(         # primary y-axis
    x = -0.01,
    y = 1.05,
    xref = "paper",
    yref = "paper",
    showarrow = FALSE,
    xanchor = "center",
    yanchor = "top"
  ),
  annotations2 = list(        # secondary y-axis
    x = 1.025, 
    y = 1.05,
    xref = "paper",
    yref = "paper",
    showarrow = FALSE,
    xanchor = "center",
    yanchor = "top"
  ),
  subtitle_annotation = list(
    x = 0.5,
    y = 1.02,
    xref = "paper",
    yref = "paper",
    showarrow = FALSE,
    xanchor = "center",
    yanchor = "top"
  ),
  trace = list(
    list(
      en=list(
        yaxis_h = "GDP at Current Prices (Euro million)",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "GDP at Current Prices (Euro million)",   # hover header (y-axis)
        name = "GDP at Current Prices (Euro million)"
      ),
      el=list(
        yaxis_h = "ΑΕΠ σε Τρέχουσες Τιμές (Ευρώ εκ.)",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "ΑΕΠ σε Τρέχουσες Τιμές (Ευρώ εκ.)",   # hover header (y-axis)
        name = "ΑΕΠ σε Τρέχουσες Τιμές (Ευρώ εκ.)"
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines', # line mode
      yaxis = "y2",
      line_t  = 'solid',      # line type
      line_c  = '#FFAD2D',  # line color
      line_s  = 3,            # line size
      point_t = 'triangle-up',     # points type
      point_c = '#FFAD2D',  # points color
      point_s = 10             # points size
    ),
    list(
      en=list(
        yaxis_h = "Annual Change in Real Terms (%)",  # y-axis header
        buttn_h = "",    # button header
        hover_h = "Annual Change in Real Terms (%)",   # hover header (y-axis)
        name = "Annual Change in Real Terms (%)"
      ),
      el=list(
        yaxis_h = "Ετήσια Μεταβολή σε Πραγματικούς Όρους (%)",  # y-axis header
        buttn_h = "",   # button header
        hover_h = "Ετήσια Μεταβολή σε Πραγματικούς Όρους (%)",   # hover header (y-axis)
        name = "Ετήσια Μεταβολή σε Πραγματικούς Όρους (%)"
      ),
      hover_f = "{y:.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options
      bar_c = '#31576F'  # bar color
    )
  ),
  onRender = list(
    ADD_BORDER = list(TRUE, "1px solid black"), # border style
    ADD_INSET = list(TRUE, "10px 100px 10px 100px") # border style
    # ,
    # ADD_MARGIN = list(TRUE, c('10px','100px','10px','100px')) # margins clockside from top - unused, replaced by inset=20px in prependContent function
  )
)



