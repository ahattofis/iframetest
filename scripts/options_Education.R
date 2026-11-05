# ######## PX FILE DOWNLOAD OPTIONS
options_api <- list(
  en=list(
    subtheme = "Education",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/en/8.CYSTAT-DB/",
    pxf = "Education/0700010E.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/6e6542db-e209-4b4e-acb0-a5d5066993bf"
  ),
  el=list(
    subtheme = "Education",
    db = "https://cystatdb.cystat.gov.cy:443/api/v1/el/8.CYSTAT-DB/",
    pxf = "Education/0700010G.px",
    user_link ="https://cystatdb.cystat.gov.cy:443/sq/24eaaa3c-6c26-45d8-ba5c-559e8c9d8e26"
  )
)

# ######## PX FILE EDIT OPTIONS
options_pxf <- list(
  en=list(
    col_value = "Schools (Public and Private), Pupils/Students and Teachers in Full Time Equivalent by Level, Annual",
    col_date  = "`SCHOOL YEAR`",     
    col_trnsp = list("`EDUCATION LEVEL`"),   
    col_trnsp_colnames = list(       
      c(
        "Pre-school & pre-primary",
        "Primary",
        "Secondary",
        "Tertiary"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[`EDUCATION VARIABLES` == 'Pupils / Students'][, `EDUCATION VARIABLES` := NULL]"       
  ),
  el=list(
    col_value = "Εκπαιδευτικά Ιδρύματα (Δημόσια και Ιδιωτικά), Μαθητές/Φοιτητές και Διδακτικό Προσωπικό σε Ισοδύναμο Πλήρους Απασχόλησης κατά Επίπεδο, Ετήσια",
    col_date  = "`ΣΧΟΛΙΚΟ ΕΤΟΣ`",    
    col_trnsp = list("`ΕΠΙΠΕΔΟ ΕΚΠΑΙΔΕΥΣΗΣ`"),   
    col_trnsp_colnames = list(
      c(
        "Προσχολική και προδημοτική",
        "Δημοτική",
        "Μέση",
        "Τριτοβάθμια"
      )
    ),
    col_trnsp_renamefrom = NULL,
    col_trnsp_renameto = NULL,
    col_filter_str = "dt <- dt[`ΜΕΤΑΒΛΗΤΕΣ ΕΚΠΑΙΔΕΥΣΗΣ` == 'Μαθητές / Φοιτητές'][, `ΜΕΤΑΒΛΗΤΕΣ ΕΚΠΑΙΔΕΥΣΗΣ` := NULL]"     
  )
)

# ######## FIGURE OPTIONS
options_fig <- list(
  title = list(
    en="Enrolments in Cyprus by Level of Education",
    el="Εγγραφές στην Κύπρο κατά Επίπεδο Εκπαίδευσης"
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
    xaxis_rs_t = "date",    # type of rangeslider
    xaxis_rs_c = "white",   # background color of rangeslider
    xaxis_rs_s = 0.03       # thicness of rangeslider
  ), 
  yaxis = list(
    en = list(title = "", tickformat = ",.0f"),
    el = list(title = "", tickformat = ",.0f")    # full numbers with thousands separator
  ),
  use_annotations = TRUE,
  annotations = list( # for y-axis label to appear at the top, where the axis arrow ends
    x = 0,
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
        yaxis_h = "Pre-school &<br>pre-primary",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Pre-school & pre-primary"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Προσχολική και<br>προδημοτική",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Προσχολική και προδημοτική"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#e10600',  # line color
      line_s  = 2,            # line size
      point_t = 'cross',     # points type
      point_c = '#e10600',  # points color
      point_s = 8             # points size
    ),
    list(
      en=list(
        yaxis_h = "Primary",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Primary"   # hover header (y-axis)
      ),
      el=list(
        yaxis_h = "Δημοτική",  # y-axis header
        buttn_h = "" ,    # button header
        hover_h = "Δημοτική"   # hover header (y-axis)
      ),
      hover_f = "{y:,.0f}",    # y-values display format
      type = 'scatter',       # line graph, bar chart, etc...
      
      # --- LINE GRAPH options  - in case of a line chart
      mode = 'lines+markers', # line mode
      line_t  = 'solid',      # line type
      line_c  = '#2ca02c',  # line color
      line_s  = 2,            # line size
      point_t = 'triangle-up',     # points type
      point_c = '#2ca02c',  # points color
      point_s = 8             # points size
      ),
      list(
        en=list(
          yaxis_h = "Secondary",  # y-axis header
          buttn_h = "" ,    # button header
          hover_h = "Secondary"   # hover header (y-axis)
        ),
        el=list(
          yaxis_h = "Μέση",  # y-axis header
          buttn_h = "" ,    # button header
          hover_h = "Μέση"   # hover header (y-axis)
        ),
        hover_f = "{y:,.0f}",    # y-values display format
        type = 'scatter',       # line graph, bar chart, etc...
        
        # --- LINE GRAPH options  - in case of a line chart
        mode = 'lines+markers', # line mode
        line_t  = 'solid',      # line type
        line_c  = '#a020f0',  # line color
        line_s  = 2,            # line size
        point_t = 'circle',     # points type
        point_c = '#a020f0',  # points color
        point_s = 8             # points size
        ),
        list(
          en=list(
            yaxis_h = "Tertiary",  # y-axis header
            buttn_h = "" ,    # button header
            hover_h = "Tertiary"   # hover header (y-axis)
          ),
          el=list(
            yaxis_h = "Τριτοβάθμια",  # y-axis header
            buttn_h = "" ,    # button header
            hover_h = "Τριτοβάθμια"   # hover header (y-axis)
          ),
          hover_f = "{y:,.0f}",    # y-values display format
          type = 'scatter',       # line graph, bar chart, etc...
          
          # --- LINE GRAPH options  - in case of a line chart
          mode = 'lines+markers', # line mode
          line_t  = 'solid',      # line type
          line_c  = '#059cfc',  # line color
          line_s  = 2,            # line size
          point_t = 'square',     # points type
          point_c = '#059cfc',  # points color
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

