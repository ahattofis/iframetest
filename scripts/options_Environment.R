# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "Environment",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Environment/1700010E.px",
    user_link = "https://cystatdb.cystat.gov.cy:443/sq/315ec604-a76c-461b-8a0b-47d178bba998"
  ),
  el=list(
    subtheme = "Environment",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Environment/1700010G.px",
    user_link = "https://cystatdb.cystat.gov.cy:443/sq/5e034da4-5e07-441a-b8df-1107e1f9d8df"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value = "Generation and Treatment of Municipal Solid Waste, Annual",
    col_date  = "YEAR",     
    col_trnsp = list("INDICATOR"),   
    col_trnsp_colnames = list(       
      c(
        "Amount of waste used for recycling, total",
        "Amount of waste used for energy recovery, total",
        "Amount of waste sorted for composting, of which: used for composting",
        "Amount of waste disposed to landfills"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = ""      
  ),
  el=list(
    col_value = "Παραγωγή και Διαχείριση Αστικών Στερεών Αποβλήτων, Ετήσια",
    col_date  = "ΕΤΟΣ",    
    col_trnsp = list("ΔΕΙΚΤΗΣ"),   
    col_trnsp_colnames = list(
      c(
        "Ποσότητα αποβλήτων που προωθήθηκε για ανακύκλωση, σύνολο",
        "Ποσότητα αποβλήτων που χρησιμοποιήθηκε και ανάκτηση ενέργειας, σύνολο",
        "Ποσότητα αποβλήτων από χωριστή διαλογή για κομποστοποίηση, εκ της οποίας: ποσότητα που χρησιμοποιήθηκε για παραγωγή κόμποστ",
        "Ποσότητα αποβλήτων που κατέληξε σε χώρους απόρριψης"
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
    en="Total Waste Treated by Category",
    el="Συνολικά Απόβλητα που Έτυχαν Διαχείρισης κατά Κατηγορία"
  ),
  gen=list(    
    margin_b = list(l = 100, r = 100, b = 50, t = 50), # figure margin from border
    standoff = 10,           # distance axes labels from axes
    chart_type = "bar",     # "bar" or "line"
    bar_mode = "stack"      #  in case chart_type = "bar": stack or group
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
    y = -0.08,
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
    tickformat = "%Y",
    xaxis_rs_t = "date",    # type of rangeslider
    xaxis_rs_c = "white",   # background color of rangeslider
    xaxis_rs_s = 0.03       # thicness of rangeslider
  ), 
  yaxis = list(
    en = list(title = "Thousand tonnes", tickformat = ",.0f"),
    el = list(title = "Χιλιάδες τόνοι ", tickformat = ",.0f")    # full numbers with thousands separator
  ),
  use_annotations = TRUE,
  annotations = list( # for y-axis label to appear at the top, where the axis arrow ends
    x = -0.01,
    y = 1.05,
    xref = "paper",
    yref = "paper",
    showarrow = FALSE,
    xanchor = "center",
    yanchor = "top"
  ),
  trace = list(
    list(
      en=list(
        yaxis_h = "Amount of waste used for recycling, total",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Amount of waste used for<br>recycling, total",   # hover header (y-axis)
        name = "Amount of waste used for recycling, total"
      ),
      el=list(
        yaxis_h = "Ποσότητα αποβλήτων που προωθήθηκε για ανακύκλωση, σύνολο",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Ποσότητα αποβλήτων που προωθήθηκε<br>για ανακύκλωση, σύνολο",   # hover header (y-axis)
        name = "Ποσότητα αποβλήτων που προωθήθηκε για ανακύκλωση, σύνολο"
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options - in case of a bar chart
      bar_c = '#FFAD2D' # bar color
    ),
    list(
      en=list(
        yaxis_h = "Amount of waste used for energy recovery, total",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Amount of waste used for<br>energy recovery, total",   # hover header (y-axis)
        name = "Amount of waste used for energy recovery, total"
      ),
      el=list(
        yaxis_h = "Ποσότητα αποβλήτων για ανάκτηση ενέργειας, σύνολο",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Ποσότητα αποβλήτων για ανάκτηση<br>ενέργειας, σύνολο",   # hover header (y-axis)
        name =  "Ποσότητα αποβλήτων για ανάκτηση ενέργειας, σύνολο"
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options - in case of a bar chart
      bar_c = '#4FA3C1' # bar color 
    ),
    list(
      en=list(
        yaxis_h = "Amount of waste sorted for composting",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Amount of waste sorted for<br>composting",   # hover header (y-axis)
        name = "Amount of waste sorted for composting   "
      ),
      el=list(
        yaxis_h = "Ποσότητα αποβλήτων από χωριστή διαλογή που χρησιμοποιήθηκε για παραγωγή κόμποστ",  # y-axis header
        buttn_h = "",   # button header
        hover_h = "Ποσότητα αποβλήτων από χωριστή διαλογή<br>που χρησιμοποιήθηκε για παραγωγή κόμποστ",   # hover header (y-axis)
        name = "Ποσότητα αποβλήτων από χωριστή διαλογή που χρησιμοποιήθηκε για παραγωγή κόμποστ"
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options - in case of a bar chart
      bar_c = '#6E8E3A' # bar color
    ),
    list(
      en=list(
        yaxis_h = "Amount of waste disposed to landfills",  # y-axis header
        buttn_h = "" ,   # button header
        hover_h = "Amount of waste disposed<br>to landfills",   # hover header (y-axis)
        name = "Amount of waste disposed to landfills"
      ),
      el=list(
        yaxis_h = "Ποσότητα αποβλήτων που κατέληξε σε χώρους απόρριψης",  # y-axis header
        buttn_h = "" ,   # button header
        hover_h = "Ποσότητα αποβλήτων που κατέληξε σε<br>χώρους απόρριψης",   # hover header (y-axis)
        name = "Ποσότητα αποβλήτων που κατέληξε σε χώρους απόρριψης"
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'bar',       # line graph, bar chart, etc...
      
      # --- BAR GRAPH options - in case of a bar chart
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
