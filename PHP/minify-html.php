<?php

/* Minify HTML */
add_action('get_header', 'gkp_html_minify_start');

function gkp_html_minify_start()
{
    ob_start('gkp_html_minyfy_finish');
}

function gkp_html_minyfy_finish($html)
{
    $html = preg_replace('/<!--(?!s*(?:[if [^]]+]|!|>))(?:(?!-->).)*-->/s', '', $html);
    $html = str_replace(array(
        "\r\n",
        "\r",
        "\n",
        "\t"
    ), '', $html);
    while (stristr($html, '  '))
        $html = str_replace('  ', ' ', $html);
    return $html;
}
