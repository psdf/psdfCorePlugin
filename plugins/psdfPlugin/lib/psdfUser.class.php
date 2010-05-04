<?php

class psdfUser extends sfBasicSecurityUser
{
  public function setCurrentFlow(Flow $flow) {
    $flows = $this->getAttribute('flows', array(), 'psdf');
    array_push( $flows, $flow );
    $this->setAttribute( 'flows', $flows, 'psdf');
  }

  public function getCurrentFlow() {
    $flows = $this->getAttribute('flows', array(), 'psdf');
    $flow = array_pop( $flows);
    $this->setAttribute( 'flows', $flows, 'psdf');
    return $flow;
  }

  public function setCurrentPattern($pattern) {
    $patterns = $this->getAttribute('patterns', array(), 'psdf');
    array_push( $patterns, $pattern );
    $this->setAttribute( 'patterns', $patterns, 'psdf');
  }

  public function getCurrentPattern() {
    $patterns = $this->getAttribute('patterns', array(), 'psdf');
    $pattern = array_pop( $patterns);
    $this->setAttribute( 'patterns', $patterns, 'psdf');
    return $pattern;
  }

}

?>