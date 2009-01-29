# COPYRIGHT: 2007 Brent Beardsley (brentbeardsley@gmail.com)
# LICENSE: MIT
module GoogleAnalyticsHelper
  def google_analytics(acct, options = {})
    url_prefix = options[:ssl] ? 'https://ssl' : 'http://www'
    "<script src=\"#{url_prefix}.google-analytics.com/urchin.js\" type=\"text/javascript\">\n" +
    "</script>\n" +
    "<script type=\"text/javascript\">\n" +
    "  _uacct = \"#{acct}\";\n" +
    "  urchinTracker();\n" +
    "</script>"
  end
end