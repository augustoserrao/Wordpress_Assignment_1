<?php
/*
================================================================================================
White Spektrum - custom-header.php
================================================================================================
This is the most generic template file in a WordPress theme and is one of the requirements to set
custom header image and styling for the header. 

@package        White Spektrum WordPress Theme
@copyright      Copyright (C) 2014-2017. Benjamin Lu
@license        GNU General Public License v2 or later (http://www.gnu.org/licenses/gpl-2.0.html)
@author         Benjamin Lu (https://www.benjlu.com/)
================================================================================================
*/

/*
================================================================================================
Table of Content
================================================================================================
1.0 - Custom Header Setup
2.0 - Custom Header CSS 
================================================================================================
*/

/*
================================================================================================
1.0 - Custom Header Setup 
================================================================================================
*/
function white_spektrum_custoM_header_setup() {
    $args = array(
        // Text color and image (empty to use none).
        'default-text-color'     => 'ffffff',
        'default-image'          => get_template_directory_uri() . '/images/header-image.jpg',

        // Set height and width, with a maximum value for the width.
        'height'                 => 300,
        'width'                  => 1170,
        'max-width'             =>  2000,

        // Support flexible height and width.
        'flex-height'            => false,
        'flex-width'             => false,

        // Random image rotation off by default.
        'random-default'         => false,

        // Callbacks for styling the custom header style.
        'wp-head-callback'       => 'white_spektrum_header_style',
    );
    add_theme_support('custom-header', $args);
    
    register_default_headers(array(
    'header-image' => array(
        'url'           => '%s/images/header-image.jpg',
        'thumbnail_url' => '%s/images/header-image.jpg',
        'description'   => __( 'Header Image', 'white-spektrum')
    )));
}
add_action('after_setup_theme', 'white_spektrum_custoM_header_setup');


/*
================================================================================================
2.0 - Custom Header CSS 
================================================================================================
*/
function white_spektrum_header_style() {
	$text_color = get_header_textcolor();
	
	if ($text_color == get_theme_support('custom-header', 'default-text-color')) {
            return;
        }
?>
	<style type="text/css">
	<?php if (!display_header_text()) : ?>
            .header-image,
            .site-branding {
                display: none;
            }
	<?php else : ?>
            .site-title a,
            .site-description {
                color: #<?php echo esc_html($text_color); ?>;
            }
	<?php endif; ?>
	</style>
<?php } ?>