# Copyright © 2010, 2013 Lawrence Leonard Gilbert
#
# Use of this code is subject to the Creative Commons Attribution-Share Alike
# 3.0 United States License.  For the details of this license, see:
# http://creativecommons.org/licenses/by-sa/3.0/us/

browser_extension do
    name         "Loosen Up!"
    gm_namespace "urn:x-l2g.to:greasemonkey:loosenup"
    description  "Relax page layouts to accommodate a range of window widths"
    version      "1.1.alpha.3"
    home_page    "https://github.com/L2G/userscripts"

    page_mods do
        url "http://userscripts.org/*" do
            add_css_style(
                "div#footer .col { width: 50%; } " +
                ".container, #header #nav, div#footer #footer-content " +
                    "{ width: 95%; } " +
                "body#site-home #content " +
                    "{ width: 62%; margin-right: 0; }" +
                "body#site-home #right " +
                    "{ width: 33%; " +
                    "  padding-left: 4%; } " +
                "body#guides-show #content " +
                    "{ width: 66%; margin-right: 1%; }" +
                "body#guides-show #right { width: 32%; }" +
                "body.wide #content { width: 100%; overflow-x: visible; } " +
                "#content pre#source { overflow: scroll; } " +
                "#content { width: 75%;  margin-right: 0; } " +
                "#header #site-logo { width: 41%; } " +
                "#right { padding-left: 2%; width: 22%; } " +
                "input.text, input.title, input[type=\"text\"] " +
                    "{ margin: 0 0 1em 0; padding: 0; } "
            )
        end

        url "https://*.facebook.com/*" do
            add_css_style(
                # ".oneNav #navSearch .inputtext { width: auto; } " +
                # ".oneNav #navSearch { width: 27%; } " +
                ".profile .right_column_container, " +
                ".profile .left_column_container { width: auto; } " +
                "#globalContainer " +
                    "{ width: 96% !important; " +
                    "  max-width: 981px; } " +
                "#pageHead { width: 100%; } " +
                "#profile_top_bar { width: auto; } " +
                "#rightCol { width: 24% !important; } " +
                # "#footerContainer { margin-right: 20px !important; } " +
                ".commentable_item .ufi_section { width: auto; max-width: 350px; } " +
                "#mainContainer #gb_content_and_toolbar { width: auto; float: none; } " +
                ".hasLeftCol #contentCol { margin-left: inherit; } " +
                ".ego_column { width: auto } "
            )
        end

        url "https://manage.opscode.com/*" do
            add_css_style(
                "#container { min-width: 0 !important; }"
            )
        end
    end  #-- page_mods

end #-- browser_extension

# vim:ts=4:sw=4:et:
