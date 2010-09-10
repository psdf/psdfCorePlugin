<?php
/* 
 * ActionPattern.class.php
 * 
 * Copyright (c) 2009 Gustavo Earnshaw <gustavoear@gmail.com>. All rights reserved.
 * 
 * This file is part of PSDF Suite.
 * 
 * PSDF Suite is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * PSDF Suite is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with PSDF Suite.  If not, see <http://www.gnu.org/licenses/>.
 */

/**
 * Patron que ejecuta una acción Symfony
 *
 * @author Gustavo Earnshaw <gustavoear@gmail.com>
 */
class ActionPattern extends BasePattern
{
    protected
        $in_module,           // Module
        $in_action;           // Action

    public function execute()
    {
        $this->redirect($this->getParameter('in_module').'/'.$this->getParameter('in_action'));
    }
}
?>
