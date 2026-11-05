
# ##############################################################################
# [A] PACKAGES
start_time <- Sys.time()
datetime <- format(start_time,"%Y%m%d_%H%M%S")

pckgs <- c('data.table','plotly','dplyr', 'httr', 'here', 'pxweb', 'htmltools', 'htmlwidgets', 'sodium', 'renv', 'logger')
if( length(setdiff(pckgs, rownames(installed.packages()))) > 0 ){
  toinstall <- setdiff( pckgs, rownames(installed.packages()))
  cat(paste0("   --> Will be installing the following packages: '",paste(toinstall,collapse="' + '"),"'\n"))
  install.packages(toinstall)
  rm(toinstall)
  cat("\n")
  gc()
}
library(data.table)
library(plotly)
library(dplyr)
library(htmltools)
library(htmlwidgets)
library(logger)


# ##############################################################################
# [B] OPTIONS AND PATHS
source(here::here(paste0("scripts/functions.R")))
dir.create( graph_dir <- here::here("docs/"), recursive=TRUE, showWarnings=FALSE)
dir.create( logs_dir <- here::here("logs/"), recursive=TRUE, showWarnings=FALSE)
csv_changes <- paste0(logs_dir,"/DT_Hashes.csv")


subthemes <- c("Agriculture", "BusinessRegister", "Construction",
                "eCommerce", "Education", "Energy",
                "Environment", "ExternalTrade", "Health", 
                "Industry", "Inflation", "Innovation", 
                "LabourCost", "LabourForce", "LifeExpectancy", 
                "NationalAccounts", "Population", "PublicFinance",
                "RandD", "Services", "SocialIndicators",
                "Tourism", "Trade", "UseOfInternet"
              )
langs <- c("en", "el")


combo_subthemes <- list(
  "Demographics" = list("Population", "LifeExpectancy"),
  "InformationSociety" = list("UseOfInternet", "eCommerce")
)
combo_plots_list <- list() # all_plots

##############################################################################
# [C] LOGS
logger::log_appender(logger::appender_file(paste0(logs_dir,"/Log_InteractiveGraphs_",datetime,".txt")))
logger::log_info(
  "CREATE INTERACTIVE GRAPHS FROM CYSTAT DB | Start time: {format(start_time, '%Y-%m-%d %H:%M:%S')}"
)

# ##############################################################################
# [E] GET DATA
logger::log_info("----->> Load previous Hashes file...")
if(file.exists(csv_changes)) {
  previous_hashes <- fread(csv_changes, colClasses=c("character"))
  setorderv(previous_hashes, c("graph","language","datetime"), c(1,1,-1))
  current_hashes <- copy(previous_hashes)
}else{
  current_hashes <- data.table()
}

for(subtheme in subthemes){
# subtheme <- "Agriculture"    
  logger::log_info("------------------------------------------------------------------------------")
  logger::log_info(paste0("--- SUBTHEME: ",subtheme))
  logger::log_info(paste0("-    Loading Options..."))
  source(here::here(paste0("scripts/options_",subtheme,".R")))

  for(lang in langs){
    # lang <- langs[1]
    logger::log_info(paste0("    LANGUAGE: ",toupper(lang)," (",subtheme,")"))    
    
    logger::log_info(paste0("[01] Get API metadata..."))
    px_metad <- pxweb::pxweb_get(url = paste0(options_api[[lang]]$db, options_api[[lang]]$pxf))    
    
    logger::log_info(paste0("[02] Get API data..."))
    logger::log_info(paste0("-    Build API query..."))
    px_varbs <- sapply(px_metad$variables, `[[`, "code")
    px_query <- lapply(px_varbs, function(x) c("*"))
    names(px_query) <- px_varbs
    logger::log_info(paste0("-    Get data via API..."))
    px_data <- pxweb::pxweb_get(url = paste0(options_api[[lang]]$db,options_api[[lang]]$pxf), 
                                query = px_query)
    logger::log_info(paste0("-    Data in tabular format..."))
    df <- as.data.frame(px_data, column.name.type = "text", variable.value.type = "text")
    dt <- data.table::as.data.table(df)
    rm(px_metad, px_varbs, px_query, px_data, df)
    
    
    logger::log_info(paste0("[03] Hashing data and comparing to prev version..."))
    logger::log_info(paste0("-    Current Hash..."))
    dt_raw <- serialize(dt, connection = NULL)
    current_hash <- sodium::bin2hex(sodium::hash(dt_raw))

    logger::log_info(paste0("-    Check previous Hashes..."))
    if(exists("previous_hashes")) {
      previous_hash <- previous_hashes[graph == subtheme & language == lang][1,hash]
      if(is.na(previous_hash)){
        logger::log_info(paste0("-    -- No Previous hash found, hence CREATE graph"))
        status = 1
      }else{
        if(previous_hash == current_hash){
          logger::log_info(paste0("-    -- Current Hash == Previous hash, hence do NOT re-create graph"))
          status = 0
        }else{
          logger::log_info(paste0("-    -- Current Hash != Previous hash, hence RE-CREATE graph"))
          status = 1
        }
      }
      rm(previous_hash)
    }else{
      logger::log_info(paste0("-    -- No Previous hashes file found, hence CREATE file AND graph"))
      status = 1
    }
    current_hash_dt <- data.table::data.table(graph = subtheme, language = lang,
                                              datetime = datetime, status = status,
                                              hash = current_hash)
    current_hashes <- rbindlist(c(list(current_hashes),list(current_hash_dt)))
    setorderv(current_hashes, c("graph","language","datetime"), c(1,1,-1))
    rm(dt_raw, current_hash, current_hash_dt)
    
    
    # # Check if specific subtheme is included in a combo 
    is_combo_part <- any(sapply(combo_subthemes, function(x) subtheme %in% unlist(x)))
        
    if (status == 1 | is_combo_part) {
      logger::log_info(paste0("[04] Cleaning data..."))
      logger::log_info(paste0("-    Identify and rename 'value' column (from'",options_pxf[[lang]]$col_value,"')"))
      setnames(dt, options_pxf[[lang]]$col_value, "Value")
      
      
      if(nchar(options_pxf[[lang]]$col_filter_str)){
        logger::log_info(paste0("-    Filtering..."))
        eval(parse(text= options_pxf[[lang]]$col_filter_str))
      }


      logger::log_info(paste0("-    Transposing..."))
      if(!is.null(options_pxf[[lang]]$col_trnsp)) {
        logger::log_info(paste0("-    Transposing the data on columns '", paste(options_pxf[[lang]]$col_trnsp, collapse = "', '") ,"'"))
        eval(parse(text = paste0( "dt <- dcast(dt, ... ~ ", options_pxf[[lang]]$col_trnsp,", value.var='Value')")))
        colsvalue <- unlist(options_pxf[[lang]]$col_trnsp_colnames)
        if(!is.null(options_pxf[[lang]]$col_trnsp_renamefrom)){
          logger::log_info(paste0("-    Renaming after Transposing..."))
          idx <- match(colsvalue, options_pxf[[lang]]$col_trnsp_renamefrom)
          colsvalue[!is.na(idx)] <- options_pxf[[lang]]$col_trnsp_renameto[idx[!is.na(idx)]]
          setnames(dt, c(options_pxf[[lang]]$col_trnsp_renamefrom), c(options_pxf[[lang]]$col_trnsp_renameto))
        }
      }else{
        logger::log_info(paste0("-    Will NOT be transposing the data..."))
        colsvalue <- "Value"
      }      

      logger::log_info(paste0("-    Identify and format 'Date' column (from'",options_pxf[[lang]]$col_date,"')"))
      dt <- cystat_date(dtname = "dt", datecol = options_pxf[[lang]]$col_date)
      
      logger::log_info(paste0("-    Finalised Table to be plotted, now having the following structure:"))
      dt <- dt[,c("Date",colsvalue), with=F]
      table_lines <- capture.output(print(tail(dt, 3)))      
      for (line in table_lines) logger::log_info(line)
            
      logger::log_info(paste0("[05] Plotting data..."))
      nrows <- dt[,.N]
      if(nrows>50 & options_fig$xaxis$xaxis_rs_v){
        initial_start <- as.character(dt[nrows-50,Date])
        initial_end <- as.character(dt[nrows,Date])
      }else{
        initial_start <- as.character(dt[1,Date])
        initial_end   <- as.character(dt[nrows,Date])
      }
      
      
      logger::log_info(paste0("-    Create custom button for linking to CYSTAT DB:","      --> ",options_api[[lang]]$user_link))
      custom_button <- cystat_custbuttn(url = options_api[[lang]]$user_link)
      
      
      logger::log_info(paste0("-    Creating plot..."))
      fig <- plot_ly()
      
      fig <- config( fig,
                     locale = lang,
                     modeBarButtons = list(list('toImage', custom_button)),
                     displaylogo = FALSE)
      
      fig <- cystat_plotly(
        data_dt = "dt",
        lang = lang,
        xcol = "Date", 
        ycols = colsvalue, 
        options_fig = options_fig
      )
      
      
      logger::log_info(paste0("-    Adding Border and Margin..."))
      fig_final <- prependContent(fig, tags$style(HTML(paste0("
          /* Create border on overlapping containerS */
          .svg-container {
                border: ",options_fig$onRender$ADD_BORDER[[2]]," !important;
            }
          
          
          /* Let container of graph have a gap from the border of 20px */
          #htmlwidget_container {
            inset: ",options_fig$onRender$ADD_INSET[[2]]," !important;
          }
          
          /* The actual graph area - issue when it is 100%, it engulfs our .svg-container border */
          .main-svg {
            width: 99% !important;
            height: 99% !important;
          }
          
          "))))
      
      # ###########################################
      # The following no longer used - replace by prependContent function above, which targets existing plotly elements
      # fig_final <- cystat_add_bordermargin(fig, 
      #                                      options_fig$onRender$ADD_BORDER, 
      #                                      options_fig$onRender$ADD_MARGIN)
      # ###########################################
      
      html_fname <- paste0(subtheme,"_",toupper(lang),".html")
      htmlwidgets::saveWidget(
        widget = fig_final,
        file = paste0(graph_dir,"/",html_fname),
        libdir="lib",
        selfcontained = TRUE
      )
      
      logger::log_info(paste0("----->> Graph saved to: ", graph_dir,"/",html_fname))

      logger::log_info(paste0("-    Populate list of combo plots..."))
      combo_plots_list[[paste0(subtheme, "_", lang)]] <- fig
      
      rm(colsvalue, nrows, initial_start, initial_end, custom_button, 
         fig, fig_final, html_fname)
      gc()
      
    }# --- END "status"
    
    rm(lang, dt)#, status)
    
  } # --- END "langs"
  
  rm(subtheme, options_fig, options_api, options_pxf)
  gc()
  
  
} # --- END "subthemes"

logger::log_info("")
logger::log_info("------------------------------------------------------------------------------")
logger::log_info("--- COMBINATION PLOTS:")
for(combination_name in names(combo_subthemes)){
  logger::log_info(paste0("-   COMBO SUBTHEME: ",combination_name))
  for(lang in langs){

    cystat_main_comboplots(combination_name = combination_name, 
                            lang = lang, 
                            combo_subthemes = combo_subthemes, 
                            combo_plots_list = combo_plots_list,
                            graph_dir = graph_dir)
    
  }
}


data.table::fwrite(current_hashes, file=csv_changes, sep=";")
rm(current_hashes)
logger::log_info(paste0("----->> Save new Hashes file..."))


end_time <- Sys.time()
logger::log_info(paste0("END Time: ", end_time))
timetaken <- end_time - start_time
logger::log_info(paste0("Time taken for code to run: ", timetaken, " ",units(timetaken)))
logger::log_info("FINISHED!")


rm(list=ls())
gc()
