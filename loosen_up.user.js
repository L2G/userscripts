// ==UserScript==
// @name          Loosen Up!
// @namespace     urn:x-l2g.to:greasemonkey:loosenup
// @description   Relax page layouts to accommodate a range of window widths
// @include       http://userscripts.org/*
// @include       http://*.facebook.com/*
// ==/UserScript==
//
// Copyright © 2010 Lawrence Leonard Gilbert
//
// Use of this code is subject to the Creative Commons Attribution-Share Alike
// 3.0 United States License.  For the details of this license, see:
// http://creativecommons.org/licenses/by-sa/3.0/us/

switch ( document.domain ) {
    case "userscripts.org":
        GM_addStyle(
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
            );
        break;
    case "facebook.com":
        GM_addStyle(
            // ".oneNav #navSearch .inputtext { width: auto; } " +
            // ".oneNav #navSearch { width: 27%; } " +
            ".profile .right_column_container, " +
            ".profile .left_column_container { width: auto; } " +
            "#globalContainer " +
                "{ width: 96% !important; " +
                "  max-width: 981px; } " +
            "#pageHead { width: 100%; } " +
            "#profile_top_bar { width: auto; } " +
            "#rightCol { width: 24% !important; } " +
            // "#footerContainer { margin-right: 20px !important; } " +
            ".commentable_item .ufi_section { width: auto; max-width: 350px; } " +
            "#mainContainer #gb_content_and_toolbar { width: auto; float: none; } " +
            ".hasLeftCol #contentCol { margin-left: inherit; } " +
            ".ego_column { width: auto } "
            );
        break;
};

