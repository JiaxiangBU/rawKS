#' Get KS statistics
#'
#' Output a \code{data.frame} with inputs (y, yhat) and tpr, fpr and ks.
#'
#' @param yhat numeric the value predicted by your model.
#' @param y numeric the target values.
#' @export
#' @import ROCR
#' @importFrom dplyr mutate
#' @examples
#' data("two_class_example_edited")
#' max(ks_table(two_class_example_edited$yhat, two_class_example_edited$y)$ks)
ks_table <- function(yhat, y) {
    pred <- ROCR::prediction(yhat, y)
    perf <- ROCR::performance(pred, 'tpr', 'fpr')
    # tpr true positive rate
    # fpr false positive rate
    perf_df <- data.frame(perf@x.values, perf@y.values)
    names(perf_df) <- c("fpr", "tpr")
    per_df2 <-
        perf_df %>%
        dplyr::mutate(cutoff = 1:nrow(.)/nrow(.)) %>%
        dplyr::mutate(ks = tpr - fpr)
    return(per_df2)
}

#' @export
ks_plot <- function(df) {
  df %>%
      select(cutoff, tpr, fpr, ks) %>%
      gather(key, value, -cutoff) %>%
      ggplot(aes(x = cutoff, y = value, col = key)) +
      geom_line()
}
