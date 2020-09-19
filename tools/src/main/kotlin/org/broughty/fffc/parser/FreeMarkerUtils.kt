package org.broughty.fffc.parser

import freemarker.template.Configuration
import freemarker.template.Template
import freemarker.template.TemplateExceptionHandler
import freemarker.template.Version
import java.util.*

const val FOUR_FOLD_KENT_FTL = "four-fold-kent.ftl"
const val FOUR_FOLD_HPD_FTL = "four-fold-hpd.ftl"
const val KILLER_HPD_FTL = "killer-hpd.ftl"

/**
 * Any methods handy for using the templates*.ftl files
 */
class FreeMarkerUtils {
  fun getFreeMarker(templateName: String): Template {
    val cfg = Configuration(Configuration.VERSION_2_3_0)
    // Where do we load the templates from:
    cfg.setClassForTemplateLoading(this::class.java, "/templates/")
    // Some other recommended settings:
    cfg.incompatibleImprovements = Version(2, 3, 20)
    cfg.defaultEncoding = "UTF-8"
    cfg.locale = Locale.UK
    cfg.templateExceptionHandler = TemplateExceptionHandler.RETHROW_HANDLER
    return cfg.getTemplate(templateName)
  }
}
