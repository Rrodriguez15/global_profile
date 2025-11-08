<?php

/**
 * @file
 * Install logic for the Global Profile.
 */

/**
 * Implements hook_install().
 *
 * This hook runs right after Drupal finishes installing the profile.
 */
function global_profile_install() {
  // Set Gin as the default and admin theme.
  \Drupal::configFactory()->getEditable('system.theme')
    ->set('default', 'gin')
    ->set('admin', 'gin')
    ->save();

  // Create a welcome page.
  $node = \Drupal\node\Entity\Node::create([
    'type' => 'page',
    'title' => 'Welcome to your new Drupal site',
    'body' => [
      'value' => '<p>This site was installed using the <strong>global_profile</strong> installation profile 🚀</p>',
      'format' => 'full_html',
    ],
    'status' => 1,
  ]);
  $node->save();
}
