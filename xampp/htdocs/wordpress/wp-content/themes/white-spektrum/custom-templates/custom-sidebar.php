<?php
/*
================================================================================================
White Spektrum - custom-sidebar.php
Template Name: Custom Sidebar
================================================================================================
This file (custom-sidebar.php) is a custom template that allows you to set a custom sidebar for 
the current page you are currently on. When you activate this template, it is using the the following 
file (sidebar-custom.php) to show custom widgets.

@package        White Spektrum WordPress Theme
@copyright      Copyright (C) 2014-2017. Benjamin Lu
@license        GNU General Public License v2 or later (http://www.gnu.org/licenses/gpl-2.0.html)
@author         Benjamin Lu (https://www.benjlu.com/)
================================================================================================
*/
?>
<?php get_header(); ?>
    <section id="site-main" class="site-main">
        <div id="custom_layout" class="<?php echo esc_attr(get_theme_mod('custom_layout', 'no-sidebar')); ?>">
            <div id="content-area" class="content-area">
                <?php while (have_posts()) : the_post(); ?>
                    <?php get_template_part('template-parts/content', 'page'); ?>
                <?php endwhile; ?>
                <?php 
                    the_post_navigation(array(
                        'next_text' => '<span class="post-next" aria-hiddent="true">' . __('Next', 'white-spektrum') . '</span>' . '<span class="post-title">%title</span>',
                        'prev_text' => '<span class="post-previous" aria-hidden="true">' . __( 'Previous', 'white-spektrum') . '</span> ' . '<span class="post-title">%title</span>',
                    ));
                ?>
                <?php comments_template(); ?>
            </div>
            <?php if ('left-sidebar' == get_theme_mod('custom_layout')) { ?>
                <?php get_sidebar('custom'); ?>
            <?php } else if ('right-sidebar' == get_theme_mod('custom_layout')) { ?>
                <?php get_sidebar('custom'); ?>
            <?php } ?>
        </div>
    </section>
<?php get_footer(); ?>