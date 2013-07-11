<?php
/*
 * This file is part of OPUS. The software OPUS has been originally developed
 * at the University of Stuttgart with funding from the German Research Net,
 * the Federal Department of Higher Education and Research and the Ministry
 * of Science, Research and the Arts of the State of Baden-Wuerttemberg.
 *
 * OPUS 4 is a complete rewrite of the original OPUS software and was developed
 * by the Stuttgart University Library, the Library Service Center
 * Baden-Wuerttemberg, the Cooperative Library Network Berlin-Brandenburg,
 * the Saarland University and State Library, the Saxon State Library -
 * Dresden State and University Library, the Bielefeld University Library and
 * the University Library of Hamburg University of Technology with funding from
 * the German Research Foundation and the European Regional Development Fund.
 *
 * LICENCE
 * OPUS is free software; you can redistribute it and/or modify it under the
 * terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the Licence, or any later version.
 * OPUS is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details. You should have received a copy of the GNU General Public License
 * along with OPUS; if not, write to the Free Software Foundation, Inc., 51
 * Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 *
 * @category    Application
 * @package     Module_Admin
 * @author      Jens Schwidder <schwidder@zib.de>
 * @copyright   Copyright (c) 2008-2013, OPUS 4 development team
 * @license     http://www.gnu.org/licenses/gpl.html General Public License
 * @version     $Id$
 */

/**
 * Formular zum Editieren einer Person (Opus_Person).
 * 
 * Dieses Formular beruecksichtigt nicht die Felder, die bei der Verknuepfung einer Person mit einem Dokument in dem
 * Link Objekt hinzukommen.
 */
class Admin_Form_Person extends Admin_Form_AbstractDocumentSubForm {

    /**
     * Name fuer Formularelement fuer Feld ID von Opus_Person.
     */
    const ELEMENT_PERSON_ID = 'PersonId';
        
    /**
     * Name fuer Formularelement fuer Feld AcademicTitle.
     */
    const ELEMENT_ACADEMIC_TITLE = 'AcademicTitle';
    
    /**
     * Name fuer Formularelement fuer Feld LastName.
     */
    const ELEMENT_LAST_NAME = 'LastName';
    
    /**
     * Name fuer Formularelement fuer Feld FirstName.
     */
    const ELEMENT_FIRST_NAME = 'FirstName';
    
    /**
     * Name fuer Formularelement fuer Feld Email.
     */
    const ELEMENT_EMAIL = 'Email';
    
    /**
     * Name fuer Formularelement fuer Feld PlaceOfBirth.
     */
    const ELEMENT_PLACE_OF_BIRTH = 'PlaceOfBirth';
    
    /**
     * Name fuer Formularelement fuer Feld DateOfBirth.
     */
    const ELEMENT_DATE_OF_BIRTH = 'DateOfBirth';
        
    /**
     * Name fuer Button zum Speichern.
     */
    const ELEMENT_SAVE = 'Save';
    
    /**
     * Name fuer Button zum Abbrechen.
     */
    const ELEMENT_CANCEL = 'Cancel';
    
    /**
     * Konstante fuer POST Ergebnis 'abspeichern'.
     */
    const RESULT_SAVE = 'save';
    
    /**
     * Konstante fuer POST Ergebnis 'abbrechen'.
     */
    const RESULT_CANCEL = 'cancel';
    
    /**
     * Erzeugt die Formularelemente.
     */
    public function init() {
        parent::init();
        
        $this->addElement('hidden', self::ELEMENT_PERSON_ID);
        $this->addElement('text', self::ELEMENT_ACADEMIC_TITLE, array('label' => 'AcademicTitle'));
        $this->addElement('text', self::ELEMENT_LAST_NAME, array('label' => 'LastName', 'required' => true));
        $this->addElement('text', self::ELEMENT_FIRST_NAME, array('label' => 'FirstName'));
        $this->addElement('text', self::ELEMENT_EMAIL, array('label' => 'Email'));
        $this->addElement('text', self::ELEMENT_PLACE_OF_BIRTH, array('label' => 'PlaceOfBirth'));
        $this->addElement('date', self::ELEMENT_DATE_OF_BIRTH, array('label' => 'DateOfBirth'));
        
        $actions = new Admin_Form_ActionSubForm();
        $actions->addElement('submit', self::ELEMENT_SAVE);
        $actions->addElement('submit', self::ELEMENT_CANCEL);
        $this->addSubForm($actions, 'actions');
    }
    
    /**
     * Setzt die Werte der Formularelmente entsprechend der uebergebenen Opus_Person Instanz.
     * @param Opus_Person $model
     */
    public function populateFromModel($person) {
        $datesHelper = $this->getDatesHelper();
        
        $this->getElement(self::ELEMENT_PERSON_ID)->setValue($person->getId());
        $this->getElement(self::ELEMENT_ACADEMIC_TITLE)->setValue($person->getAcademicTitle());
        $this->getElement(self::ELEMENT_FIRST_NAME)->setValue($person->getFirstName());
        $this->getElement(self::ELEMENT_LAST_NAME)->setValue($person->getLastName());
        $this->getElement(self::ELEMENT_PLACE_OF_BIRTH)->setValue($person->getPlaceOfBirth());
        $date = $person->getDateOfBirth();
        $this->getElement(self::ELEMENT_DATE_OF_BIRTH)->setValue($datesHelper->getDateString($date));
        $this->getElement(self::ELEMENT_EMAIL)->setValue($person->getEmail());
    }
        
    /**
     * Ermittelt bei einem Post welcher Button geklickt wurde, also welche Aktion gewünscht ist.
     * @param array $post
     * @param array $context
     * @return string String fuer gewuenschte Operation
     */
    public function processPost($post, $context) {
        if (array_key_exists(self::ELEMENT_SAVE, $post)) {
            return self::RESULT_SAVE;
        }
        else if (array_key_exists(self::ELEMENT_CANCEL, $post)) {
            return self::RESULT_CANCEL;
        }
    }

    /**
     * Setzt die Felder einer Opus_Person Instanz entsprechend dem Formularinhalt.
     * @param Opus_Person $model
     */
    public function updateModel($model) {
        if ($model instanceof Opus_Person) {
            $model->setAcademicTitle($this->getElementValue(self::ELEMENT_ACADEMIC_TITLE));
            $model->setLastName($this->getElementValue(self::ELEMENT_LAST_NAME));
            $model->setFirstName($this->getElementValue(self::ELEMENT_FIRST_NAME));
            $model->setEmail($this->getElementValue(self::ELEMENT_EMAIL));
            $model->setPlaceOfBirth($this->getElementValue(self::ELEMENT_PLACE_OF_BIRTH));
            $datesHelper = $this->getDatesHelper();
            $model->setDateOfBirth($datesHelper->getOpusDate($this->getElementValue(self::ELEMENT_DATE_OF_BIRTH)));
        }
        else {
            $this->getLog()->err('updateModel called with object that is not instance of Opus_Person');
        }
    }
    
    /**
     * Liefert Instanz von Opus_Person zurueck.
     * @return \Opus_Person
     */
    public function getModel() {
       $personId = $this->getElementValue(self::ELEMENT_PERSON_ID);
       
       if (is_numeric($personId)) {
           $person = new Opus_Person($personId);
       }
       else {
           $person = new Opus_Person();
       }
       
       $this->updateModel($person);
       
       return $person;
    }
    
}