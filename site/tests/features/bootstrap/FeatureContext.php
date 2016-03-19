<?php

use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;

class FeatureContext extends Drupal\DrupalExtension\Context\RawDrupalContext {
  /**
   * @BeforeStep
   */
  public function setupWindow() {
   $this->getSession()->resizeWindow(1280, 800, 'current');
  }
}
